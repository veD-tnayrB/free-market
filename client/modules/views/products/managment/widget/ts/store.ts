import { ReactiveModel } from '@beyond-js/reactive/model';
import { Product, Categories } from '@essential-js/admin/models';
import { session } from '@essential-js/admin/auth';
import { IValues } from './views/form';
import { toast } from 'react-toastify';
import { routing } from '@beyond-js/kernel/routing';

export class StoreManager extends ReactiveModel<StoreManager> {
	#item: Product = new Product();
	get item() {
		return this.#item;
	}

	#categories: Categories = new Categories();
	get categories() {
		return this.#categories;
	}
	notFound: boolean = false;

	#error: string = '';
	get error() {
		return this.#error;
	}

	#isCreating: boolean = false;
	get isCreating() {
		return this.#isCreating;
	}

	load = async ({ id }: { id: string | undefined }) => {
		try {
			if (!id || id === 'create') {
				this.#isCreating = true;
				this.#item.creatorUserId = session.user.id;
				this.#item.creatorUser = session.user;
				return;
			}

			this.fetching = true;

			const response = await this.#item.load({ id });
			if (response.status && !response.data) this.notFound = true;
			if (!response.status) throw response.error;
			const categoriesResponse = await this.#categories.load();
			if (!categoriesResponse.status) throw response.error;

			return { status: true };
		} catch (error) {
			return { status: false, error };
		} finally {
			this.fetching = false;
			this.ready = true;
			this.triggerEvent();
		}
	};

	save = async (values: IValues) => {
		try {
			this.fetching = true;
			const validations = this.#validateValues(values);
			if (validations) {
				this.#error = validations;
				this.triggerEvent();
				return;
			}

			await this.#item.set(values);

			const response = await this.#item.publish(values);
			if (!response.status) throw response.error;

			toast.success(this.#item.id ? 'Product updated successfully' : 'Product created successfully');
			routing.pushState('/products');

			return { status: true };
		} catch (error) {
			toast.error('Something went wrong, please try again or contact the administrator');
			return { status: false, error };
		} finally {
			this.fetching = false;
		}
	};

	#validateValues = (values: IValues) => {
		if (!values.name) return 'The product must have a name.';
		if (!values.description) return 'The product must have a description.';
		if (!values.img) return 'The product must have an image.';
		if (!values.price) return 'The product must have a price.';
		if (values.price === 0) return 'The product must have a valid price.';
	};

	reset = () => {
		this.#item = new Product();
		this.#categories = new Categories();
		this.ready = false;
		this.fetching = false;
		this.triggerEvent();
	};
}
