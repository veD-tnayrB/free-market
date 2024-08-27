import React from 'react';
import { Form as FormUI, Input, Textarea } from 'pragmate-ui/form';
import { CurrencyInput } from '@essential-js/admin/components/inputs';
import { useProductsManagmentContext } from '../context';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { Button } from 'pragmate-ui/components';
import { Image } from 'pragmate-ui/image';
import { Alert, ITypes as IAlert } from 'pragmate-ui/alert';
import { routing } from '@beyond-js/kernel/routing';
import { ImgPlaceholder } from './image-placeholder';
import { ReactSelect as Select } from 'pragmate-ui/form/react-select';
import { ICategory } from '@essential-js/admin/models';

export interface IValues {
	name: string;
	description: string;
	creatorUserId: string;
	img: string;
	price: number;
	categories: string[];
}

export const Form = () => {
	const { store } = useProductsManagmentContext();
	const [error, setError] = React.useState('');
	const [values, setValues] = React.useState<IValues>({
		name: store.item.name || '',
		description: store.item.description || '',
		img: store.item.img || '',
		creatorUserId: store.item.creatorUserId,
		price: store.item.price,
		categories: store.item.categories || [],
	});
	const [isLoading, setIsLoading] = React.useState(store.fetching);

	useBinder([store], () => {
		setIsLoading(store.fetching);
		setError(store.error);
	});

	const onChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		const { name, value: rawValue, type } = event.target;
		let value: string | boolean | number = type === 'checkbox' ? event.target.checked : rawValue;
		if (name === 'price') value = Number(value);
		setValues({ ...values, [name]: value });
	};

	const onSubmit = async () => {
		store.save(values);
	};

	const onCancel = () => {
		store.reset();
		routing.pushState('/products');
	};
	// const activeSwitchLabel = values.active ? 'Active' : 'Inactive';
	const imgSrc = values.img || 'PLACEHOLDER';
	const img = values.img ? <Image src={imgSrc} alt={values.name} className="img" /> : <ImgPlaceholder />;

	const categoriesOptions = store.categories.items.map((item: ICategory) => ({ label: item.name, value: item.id }));
	const categoriesSelected = categoriesOptions.filter((item: { label: string; value: string }) =>
		values.categories.includes(item.value)
	);

	return (
		<FormUI onSubmit={onSubmit} className="managment-form">
			<Alert type={IAlert.Error}>{error}</Alert>

			<div className="min-h-10 img-container">{img}</div>
			<Input className="fixed-label" label="Image URL" value={values.img} name="img" onChange={onChange} />
			<div className="first-section flex gap-4">
				<Input
					className="fixed-label w-full"
					label="Name"
					value={values.name}
					name="name"
					onChange={onChange}
				/>
				<CurrencyInput
					className="fixed-label w-full"
					label="Price"
					type="number"
					value={values.price}
					name="price"
					onChange={onChange}
				/>
			</div>
			<Textarea
				className="fixed-label"
				label="Description"
				value={values.description}
				name="description"
				onChange={onChange}
			/>

			<Select
				isMulti
				label="Categories"
				options={categoriesOptions}
				value={categoriesSelected || []}
				onChange={onChange}
				name="categories"
			/>
			{/* <div className="pui-input">
				<label className="pui-switch__label">
					<Switch checked={values.active} name="active" onChange={onChange} />
					<span className="label-content">{activeSwitchLabel}</span>
				</label>
			</div> */}

			<div className="actions">
				<Button type="reset" variant="secondary" onClick={onCancel} disabled={isLoading}>
					Cancel
				</Button>
				<Button type="submit" variant="primary" loading={isLoading}>
					Save
				</Button>
			</div>
		</FormUI>
	);
};
