import * as React from 'react';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { StoreManager } from '../store';
import { ListView, IListViewProps, ItemActionType } from '@essential-js/admin/components/list-view';
import { usePermissions } from '@essential-js/admin/hooks';
import { ProductsListContext } from '../context';
import { Row } from './item';

export /*bundle*/
function View({ store }: { store: StoreManager }) {
	const [, setUpdate] = React.useState({});
	const permissions = usePermissions();
	useBinder([store], () => {
		setUpdate({});
	});

	const listProperties: IListViewProps = {
		store,
		plugins: ['reports'],
		viewHeader: {
			title: 'Products',
		},
		searchbar: {
			placeholder: 'Search...',
			filters: {
				title: 'Filter by specific column',
				actions: {
					apply: { label: 'Search' },
					reset: { label: 'Reset' },
				},
			},
		},
		header: {
			items: [
				{ label: 'ID', name: 'id' },
				{ label: 'Image', name: 'img' },
				{ label: 'Name', name: 'name' },
				{ label: 'Description', name: 'description' },
				{ label: 'Price', name: 'price' },
				{ label: 'Created at', name: 'timeCreated' },
				{ label: '', name: '' },
			],
		},
		list: {
			row: Row,
			itemsConfig: {
				properties: ['id', 'img', 'name', 'description', 'price', 'timeCreated'],
			},
		},
		actions: {
			create: {
				to: '/products/managment/create',
				label: 'Create',
			},
			columnsSelector: {},
			reports: {
				generateReport: {
					excel: {},
					csv: {},
				},
				downloadTemplate: {
					excel: {},
					csv: {},
				},
				import: {},
			},
		},
	};

	if (!permissions.has('products.create')) listProperties.actions!.create = undefined;
	if (!permissions.has('products.get-template')) listProperties.actions!.reports!.downloadTemplate = undefined;
	if (!permissions.has('products.generate-report')) listProperties.actions!.reports!.generateReport = undefined;
	if (!permissions.has('products.import')) listProperties.actions!.reports!.import = undefined;

	const contextValue = {
		permissions,
	};

	return (
		<ProductsListContext.Provider value={contextValue}>
			<div className="page-container products-list list-page-container">
				<ListView {...listProperties} />
			</div>
		</ProductsListContext.Provider>
	);
}
