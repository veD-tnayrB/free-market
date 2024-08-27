import * as React from 'react';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { StoreManager } from '../store';
import { ListView, IListViewProps } from '@essential-js/admin/components/list-view';
import { usePermissions } from '@essential-js/admin/hooks';
import { CategoriesListContext } from '../context';
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
			title: 'Categories',
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
				{ label: 'Name', name: 'name' },
				{ label: 'Description', name: 'description' },
				{ label: 'Created at', name: 'timeCreated' },
				{ label: 'Updated at', name: 'timeUpdated' },
				{ label: '', name: '' },
			],
		},
		list: {
			row: Row,
			default: true,
			itemsConfig: {
				properties: ['id', 'name', 'description', 'timeCreated', 'timeUpdated'],
			},
		},
		actions: {
			create: {
				to: '/categories/managment/create',
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

	if (!permissions.has('categories.create')) listProperties.actions!.create = undefined;
	if (!permissions.has('categories.get-template')) listProperties.actions!.reports!.downloadTemplate = undefined;
	if (!permissions.has('categories.generate-report')) listProperties.actions!.reports!.generateReport = undefined;
	if (!permissions.has('categories.import')) listProperties.actions!.reports!.import = undefined;

	const contextValue = {
		permissions,
	};

	return (
		<CategoriesListContext.Provider value={contextValue}>
			<div className="page-container list-page-container">
				<ListView {...listProperties} />
			</div>
		</CategoriesListContext.Provider>
	);
}
