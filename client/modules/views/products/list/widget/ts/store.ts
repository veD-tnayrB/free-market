import { StoreListView } from '@essential-js/admin/components/list-view';
import { Products } from '@essential-js/admin/models';

export class StoreManager extends StoreListView {
	declare specificFilters: { label: string; name: string }[];
	declare generalFilters: string[];
	constructor() {
		super({ collection: new Products(), id: 'products' });
		this.specificFilters = [
			{ label: 'ID', name: 'id' },
			{ label: 'Name', name: 'name' },
			{ label: 'Price', name: 'price' },
		];

		this.generalFilters = ['id', 'name'];
	}
}
