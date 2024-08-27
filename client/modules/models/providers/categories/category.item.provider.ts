import { ItemProvider } from '@essential-js/admin/helpers';
import { ICategory } from '../../entities/categories/category.item';

export class CategoryItemProvider extends ItemProvider<ICategory> {
	constructor() {
		super({
			endpoints: {
				publish: 'category',
				get: 'category',
				delete: 'category',
			},
		});
	}
}
