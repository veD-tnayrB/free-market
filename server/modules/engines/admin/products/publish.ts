import { DB } from '@essential-js/admin-server/db';
import { v4 as uuid } from 'uuid';

export interface IPublish {
	id: string;
	name: string;
	description: string;
	timeCreated: Date;
	timeUpdated: Date;
	img: string;
	creatorUserId: string;
	categories: string[];
}

export class Publish {
	static model: typeof DB.models.Products = DB.models.Products;

	static async create(params: IPublish) {
		const transaction = await DB.sequelize.transaction();
		try {
			const product = await Publish.model.create(params, { transaction });

			await transaction.commit();
			return { status: true, data: { id: params.id } };
		} catch (error) {
			await transaction.rollback();
			return { status: false, error: { error, target: 'product/update' } };
		}
	}

	static async update(params: IPublish) {
		const transaction = await DB.sequelize.transaction();
		try {
			const { id, ...productData } = params;
			await Publish.model.update(productData, { where: { id }, transaction });

			await transaction.commit();
			return { status: true, data: { id } };
		} catch (error) {
			await transaction.rollback();
			return { status: false, error: { error, target: 'product/update' } };
		}
	}
}
