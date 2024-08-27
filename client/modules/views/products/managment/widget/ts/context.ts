import React from 'react';
import { StoreManager } from './store';

export interface IContext {
	store: StoreManager;
}

export const ProductsManagmentContext = React.createContext<IContext>({} as IContext);
export const useProductsManagmentContext = () => React.useContext(ProductsManagmentContext);
