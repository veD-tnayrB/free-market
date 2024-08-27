import { StoreListView } from '@essential-js/admin/components/list-view';
import { Categories } from '@essential-js/admin/models';

export class StoreManager extends StoreListView {
	declare specificFilters: { label: string; name: string }[];
	declare generalFilters: string[];
	constructor() {
		super({ collection: new Categories(), id: 'categories' });
		this.specificFilters = [
			{ label: 'ID', name: 'id' },
			{ label: 'Name', name: 'name' },
		];

		this.generalFilters = ['id', 'name'];
	}
}
