import React from 'react';
import { StoreManager } from './store';

export interface IContext {
	store: StoreManager;
}

export const CategoriesManagmentContext = React.createContext<IContext>({} as IContext);
export const useCategoriesManagmentContext = () => React.useContext(CategoriesManagmentContext);
