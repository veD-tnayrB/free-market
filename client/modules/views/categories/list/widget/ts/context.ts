import React from 'react';

interface IContext {
	permissions: Map<string, Record<string, string>>;
}

export const CategoriesListContext = React.createContext({} as IContext);
export const useCategoriesListContext = () => React.useContext(CategoriesListContext);
