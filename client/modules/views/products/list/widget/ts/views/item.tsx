import React from 'react';
import { IRow } from '@essential-js/admin/components/list-view';
import { v4 as uuid } from 'uuid';
import { Button } from 'pragmate-ui/components';
import { routing } from '@beyond-js/kernel/routing';
import { useProductsListContext } from '../context';
import { Img } from './img';

export const Row = ({ propertiesToDisplay, item }: IRow) => {
	const { permissions } = useProductsListContext();

	const output = propertiesToDisplay.map((property: string) => {
		let value = item[property];

		if (property === 'description') {
			return (
				<span title={value} className="field description-field" key={uuid()}>
					<p>{value}</p>
				</span>
			);
		}

		return (
			<span className="field" title={value} key={uuid()}>
				{value}
			</span>
		);
	});

	const onEdit = () => routing.pushState(`/products/managment/${item.id}`);
	const displayEdit = permissions.has('products.update');
	console.log('ITEM: ', item);
	return (
		<li className="row flex">
			<span className="field image-field">
				<Img src={item.img} alt={item.name} />
			</span>

			<div>
				<span title={item.name}>{item.name}</span>

				<span className="field description-field">
					<p>{item.description}</p>
				</span>

				<span className="price-field" title={item.price}>
					${item.price}
				</span>
			</div>

			<span className="actions actions-container field">
				<div className="row-actions">
					{displayEdit && (
						<Button onClick={onEdit} title="Edit">
							<svg
								xmlns="http://www.w3.org/2000/svg"
								width="24"
								height="24"
								viewBox="0 0 24 24"
								fill="none"
								stroke="currentColor"
								strokeWidth="2"
								strokeLinecap="round"
								strokeLinejoin="round"
								className="lucide lucide-pencil-line"
							>
								<path d="M12 20h9" />
								<path d="M16.5 3.5a2.12 2.12 0 0 1 3 3L7 19l-4 1 1-4Z" />
								<path d="m15 5 3 3" />
							</svg>
						</Button>
					)}
				</div>
			</span>
		</li>
	);
};
