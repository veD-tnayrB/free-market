import { ItemProvider } from '@essential-js/admin/helpers';
import { IProduct } from '../../entities/products/product.item';

export class ProductItemProvider extends ItemProvider<IProduct> {
	constructor() {
		super({
			endpoints: {
				publish: 'product',
				get: 'product',
				delete: 'product',
			},
		});
	}
}
