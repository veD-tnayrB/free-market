import { DB } from '@essential-js/admin-server/db';

export interface IGetParams {
	id: string;
	include?: unknown[];
}

export class Get {
	static model: typeof DB.models.Products = DB.models.Products;

	static execute = async (params: IGetParams) => {
		try {
			params.include = [
				{
					model: DB.models.Users,
					as: 'creatorUser',
				},
				{
					model: DB.models.ProductsCategories,
					as: 'productsCategories',

					include: [
						{
							model: DB.models.Categories,
							as: 'category',
						},
					],
				},
			];

			const response = await Get.model.findOne({ where: { id: params.id }, include: params.include });
			if (!response) return { status: true, data: null };

			const product = response.dataValues;
			const categories = product.productsCategories.map(
				(productCategory) => productCategory.dataValues.categoryId
			);

			const result = {
				id: product.id,
				name: product.name,
				description: product.description,
				timeCreated: product.timeCreated,
				timeUpdated: product.timeUpdated,
				creatorUserId: product.creatorUserId,
				creatorUser: product.creatorUser.dataValues,
				img: product.image,
				categories,
			};

			return { status: true, data: result };
		} catch (error) {
			return { status: false, error };
		}
	};
}
