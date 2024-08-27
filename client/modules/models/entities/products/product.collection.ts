import { Collection } from '@beyond-js/reactive/entities';
import config from '@essential-js/admin/config';
import { Product } from './product.item';
import { ProductsCollectionProvider } from '../../providers/products/products.collection.provider';

export /*bundle*/ class Products extends Collection {
	constructor() {
		super({
			provider: ProductsCollectionProvider,
			storeName: 'products',
			db: config.params.application.localDB,
			localdb: true,
			item: Product,
		});
	}

	generateReport = async (params: {
		header: { label: string; name: string }[];
		type: 'xlsx' | 'csv';
		params: { [key: string]: any };
	}) => {
		try {
			this.fetching = true;
			if (!this.provider.generateReport) return;
			const response = await this.provider.generateReport(params);
			const downloadExcelUrl = URL.createObjectURL(response);
			return { status: true, data: downloadExcelUrl };
		} catch (error) {
			console.error(error);
			return error;
		} finally {
			this.fetching = false;
		}
	};

	getTemplate = async (params: { type: 'xlsx' | 'csv' }) => {
		try {
			this.fetching = true;
			if (!this.provider.getTemplate) return;
			const response = await this.provider.getTemplate(params);
			const downloadExcelUrl = URL.createObjectURL(response);
			return { status: true, data: downloadExcelUrl };
		} catch (error) {
			console.error(error);
			return error;
		} finally {
			this.fetching = false;
		}
	};

	import = async (params: { file: File }) => {
		try {
			this.fetching = true;
			if (!this.provider.import) return;
			await this.provider.import(params);
			return { status: true };
		} catch (error) {
			console.error(error);
			return error;
		} finally {
			this.fetching = false;
		}
	};
}
