import { DB } from '@essential-js/admin-server/db';

export class GetTotals {
	static execute = async () => {
		try {
			const users = await DB.models.Users.findAll({});
			const notifications = await DB.models.Notifications.findAll({});
			const profiles = await DB.models.Profiles.findAll({});
			const products = await DB.models.Products.findAll({});

			return {
				status: true,
				data: {
					products: products.length,
					users: users.length,
					notifications: notifications.length,
					profiles: profiles.length,
				},
			};
		} catch (error) {
			return { status: false, error };
		}
	};
}
