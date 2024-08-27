import { ReactiveModel } from '@beyond-js/reactive/model';
import { Category } from '@essential-js/admin/models';
import { IValues } from './views/form';
import { toast } from 'react-toastify';
import { routing } from '@beyond-js/kernel/routing';

export class StoreManager extends ReactiveModel<StoreManager> {
	#item: Category = new Category();
	get item() {
		return this.#item;
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
				return;
			}

			this.fetching = true;

			const response = await this.#item.load({ id });
			if (response.status && !response.data) this.notFound = true;
			if (!response.status) throw response.error;

			return { status: true };
		} catch (error) {
			return { status: false, error };
		} finally {
			this.fetching = false;
			this.ready = true;
		}
	};

	save = async (values: IValues) => {
		try {
			this.fetching = true;
			const toSendValues = { ...values };
			const validations = this.#validateValues(values);
			if (validations) {
				this.#error = validations;
				this.triggerEvent();
				return;
			}

			await this.#item.set(toSendValues);

			const response = await this.#item.publish(toSendValues);
			if (!response.status) throw response.error;

			toast.success(this.#item.id ? 'Category updated successfully' : 'Category created successfully');
			routing.pushState('/categories');

			return { status: true };
		} catch (error) {
			toast.error('Something went wrong, please try again or contact the administrator');
			return { status: false, error };
		} finally {
			this.fetching = false;
		}
	};

	#validateValues = (values: IValues) => {
		if (!values.name) return 'The category must have a name.';
	};

	reset = () => {
		this.#item = new Category();
		this.ready = false;
		this.fetching = false;
		this.triggerEvent();
	};
}
