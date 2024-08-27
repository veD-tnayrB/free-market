import React from 'react';
import { Form as FormUI, Input, Textarea, Switch } from 'pragmate-ui/form';
import { useCategoriesManagmentContext } from '../context';
import { useBinder } from '@beyond-js/react-18-widgets/hooks';
import { Button } from 'pragmate-ui/components';
import { Alert, ITypes as IAlert } from 'pragmate-ui/alert';
import { routing } from '@beyond-js/kernel/routing';

export interface IValues {
	name: string;
	description: string;
}

export const Form = () => {
	const { store } = useCategoriesManagmentContext();
	const [error, setError] = React.useState('');
	const [values, setValues] = React.useState<IValues>({
		name: store.item.name || '',
		description: store.item.description || '',
	});
	const [isLoading, setIsLoading] = React.useState(store.fetching);

	useBinder([store], () => {
		setIsLoading(store.fetching);
		setError(store.error);
	});

	const onChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		const { name, value: rawValue, type } = event.target;
		const value = type === 'checkbox' ? event.target.checked : rawValue;
		setValues({ ...values, [name]: value });
	};

	const onSubmit = async () => {
		store.save(values);
	};

	const onCancel = () => {
		store.reset();
		routing.pushState('/categories');
	};
	// const activeSwitchLabel = values.active ? 'Active' : 'Inactive';

	return (
		<FormUI onSubmit={onSubmit} className="managment-form">
			<Alert type={IAlert.Error}>{error}</Alert>

			<div className="first-section flex gap-4">
				<Input
					className="fixed-label w-full"
					label="Name"
					value={values.name}
					name="name"
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
