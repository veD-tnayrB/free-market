import React from 'react';
import { StoreListView } from './store-prototype';
import { IList } from './components/list/list';
import { IHeader } from './components/list/header/header';
import { ISearchbar } from './components/utility-bar/searchbar/searchbar';
import { IActions } from './components/utility-bar/actions/actions';
import { IListViewProps } from './list-view.component';

export interface IContext {
	store: StoreListView;
	itemsProperties: string[];
	list: IList;
	header?: IHeader;
	searchbar?: ISearchbar;
	actions?: IActions;
}

export const ListViewContext = React.createContext<IContext>({} as IContext);
export /*bundle*/ const useListViewContext = () => React.useContext(ListViewContext);
