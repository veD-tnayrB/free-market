import { Application } from 'express';
import { users } from './users';
import { modules } from './modules';
import { auth } from './auth';
import { profiles } from './profiles';
import { widgets } from './widgets';
import { notifications } from './notifications';
import { products } from './products';
import { categories } from './categories';

export const adminRoutes = (app: Application) => {
	users.setup(app);
	modules.setup(app);
	auth.setup(app);
	profiles.setup(app);
	widgets.setup(app);
	notifications.setup(app);
	products.setup(app);
	categories.setup(app);
};
