import React, { LegacyRef } from 'react';
import { TotalsWidgetManager } from './totals.widget.manager';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { TotalItem } from './components/total.item.widget';

const manager = new TotalsWidgetManager();

export /*bundle*/ const TotalsWidget = () => {
	const [data, setData] = React.useState<Record<string, number>>(manager.data);
	useBinder([manager], () => setData(manager.data));

	React.useEffect(() => {
		manager.load();
	}, []);
	return (
		<section className="totals-widget">
			<TotalItem
				title="Users"
				amount={data?.users || '0'}
				icon='<svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke-width="1.5" viewBox="0 0 24 24" color="#000000"><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" d="M1 20v-1a7 7 0 0 1 7-7v0a7 7 0 0 1 7 7v1"></path><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" d="M13 14v0a5 5 0 0 1 5-5v0a5 5 0 0 1 5 5v.5"></path><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8ZM18 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"></path></svg>'
			/>
			<TotalItem
				title="Products"
				amount={data?.products || '0'}
				icon='<svg xmlns="http://www.w3.org/2000/svg"  stroke-width="1.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-package-open"><path d="M12 22v-9"/><path d="M15.17 2.21a1.67 1.67 0 0 1 1.63 0L21 4.57a1.93 1.93 0 0 1 0 3.36L8.82 14.79a1.655 1.655 0 0 1-1.64 0L3 12.43a1.93 1.93 0 0 1 0-3.36z"/><path d="M20 13v3.87a2.06 2.06 0 0 1-1.11 1.83l-6 3.08a1.93 1.93 0 0 1-1.78 0l-6-3.08A2.06 2.06 0 0 1 4 16.87V13"/><path d="M21 12.43a1.93 1.93 0 0 0 0-3.36L8.83 2.2a1.64 1.64 0 0 0-1.63 0L3 4.57a1.93 1.93 0 0 0 0 3.36l12.18 6.86a1.636 1.636 0 0 0 1.63 0z"/></svg>'
			/>
			<TotalItem
				title="Notifications"
				amount={data?.notifications || '0'}
				icon='<svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke-width="1.5" viewBox="0 0 24 24" color="#000000"><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="M21 7.353v9.294a.6.6 0 0 1-.309.525l-8.4 4.666a.6.6 0 0 1-.582 0l-8.4-4.666A.6.6 0 0 1 3 16.647V7.353a.6.6 0 0 1 .309-.524l8.4-4.667a.6.6 0 0 1 .582 0l8.4 4.667a.6.6 0 0 1 .309.524Z"></path><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="m3.528 7.294 8.18 4.544a.6.6 0 0 0 .583 0l8.209-4.56M12 21v-9"></path></svg>'
			/>
			<TotalItem
				title="Profiles"
				amount={data?.profiles || '0'}
				icon='<svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke-width="1.5" viewBox="0 0 24 24" color="#000000"><path stroke="#000000" stroke-width="1.5" stroke-dasharray="3 3" stroke-linecap="round" stroke-linejoin="round" d="M22 16c0-5.523-4.477-10-10-10-4.1 0-7.625 2.468-9.168 6"></path><path fill="#000000" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="M2 17a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z"></path><path stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="M2 16h10"></path><path fill="#000000" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" d="M12 17a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z"></path></svg>'
			/>
		</section>
	);
};
