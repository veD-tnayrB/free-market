import { Item } from '@beyond-js/reactive/entities';
import config from '@essential-js/admin/config';
import { CategoryItemProvider } from '../../providers/categories/category.item.provider';

export /*bundle*/ interface ICategory {
	id: string;
	isNew: boolean;
	name: string;
	description: string;
	timeCreated: Date;
	timeUpdated: Date;
}

export /*bundle*/ class Category extends Item<ICategory> {
	protected properties = ['id', 'name', 'description', 'timeCreated', 'timeUpdated'];

	constructor(params: { id?: string | undefined } = { id: undefined }) {
		super({
			provider: CategoryItemProvider,
			storeName: 'categories',
			db: config.params.application.localDB,
			...params,
		});
	}
}
