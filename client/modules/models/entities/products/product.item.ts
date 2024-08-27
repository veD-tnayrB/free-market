import { Item } from '@beyond-js/reactive/entities';
import config from '@essential-js/admin/config';
import { ProductItemProvider } from '../../providers/products/product.item.provider';
import { IUser } from '../users/user.item';
import { ICategory } from '../categories/category.item';

export /*bundle*/ interface IProduct {
	id: string;
	isNew: boolean;
	name: string;
	description: string;
	timeCreated: Date;
	timeUpdated: Date;
	active: boolean;
	img: string;
	price: number;
	creatorUser: IUser;
	categories: string[];
}

export /*bundle*/ class Product extends Item<IProduct> {
	protected properties = [
		'id',
		'name',
		'description',
		'timeCreated',
		'timeUpdated',
		'creatorUserId',
		'img',
		'active',
		'price',
		'creatorUser',
		'categories',
	];

	constructor(params: { id?: string | undefined } = { id: undefined }) {
		super({
			provider: ProductItemProvider,
			storeName: 'products',
			db: config.params.application.localDB,
			...params,
		});
	}
}
