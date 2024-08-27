import * as React from 'react';
import { Form } from './form';
import { StoreManager } from '../store';
import { IContext, CategoriesManagmentContext } from '../context';
import { SpinnerPage } from '@essential-js/admin/components/spinner';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { NotFound } from '@essential-js/admin/components/not-found';

export /*bundle*/
function View({ store }: { store: StoreManager }) {
	const [ready, setReady] = React.useState(store.ready);
	useBinder([store], () => setReady(store.ready), 'change');

	if (store.notFound) return <NotFound />;
	if (!ready) return <SpinnerPage />;

	const contextValue: IContext = {
		store,
	};
	const mode = store.isCreating ? 'Category creation' : 'Category edition';
	const creatingDescription = 'Create a new category to use in your products!';
	const editingDescription = 'Manage the category of your products.';

	const description = store.isCreating ? creatingDescription : editingDescription;
	return (
		<CategoriesManagmentContext.Provider value={contextValue}>
			<div className="page-container managment-page">
				<h1>{mode}</h1>
				<p>{description}</p>
				<Form />
			</div>
		</CategoriesManagmentContext.Provider>
	);
}
