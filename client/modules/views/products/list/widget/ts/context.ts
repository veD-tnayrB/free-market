import React from 'react';

interface IContext {
	permissions: Map<string, Record<string, string>>;
}

export const ProductsListContext = React.createContext({} as IContext);
export const useProductsListContext = () => React.useContext(ProductsListContext);
