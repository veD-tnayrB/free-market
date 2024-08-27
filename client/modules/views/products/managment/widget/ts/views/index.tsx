import * as React from 'react';
import { Form } from './form';
import { StoreManager } from '../store';
import { IContext, ProductsManagmentContext } from '../context';
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
	const mode = store.isCreating ? 'Product creation' : 'Product edition';
	const creatingDescription = 'Create new products ';

	const editingDescription = 'Manage your product information.';

	const description = store.isCreating ? creatingDescription : editingDescription;
	return (
		<ProductsManagmentContext.Provider value={contextValue}>
			<div className="page-container products-page managment-page">
				<h1>{mode}</h1>
				<p>{description}</p>
				<Form />
			</div>
		</ProductsManagmentContext.Provider>
	);
}
