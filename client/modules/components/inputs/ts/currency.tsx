import React from 'react';
import { Input } from 'pragmate-ui/form';

export interface IProps extends React.InputHTMLAttributes<HTMLInputElement> {
	ref?: any;
	variant?: string;
	icon?: string;
	errorMessage?: string;
	value?: string;
	label?: any;
	children?: React.ReactNode;
	hasError?: boolean;
	password?: boolean;
}

export /*bundle*/ const CurrencyInput = (props: IProps) => {
	const { label, ...propertiesToUse } = props;

	const onFocus = (event) => {
		if (event.target.value === '0') {
			event.target.value = '';
		}
	};

	const onBlur = (event) => {
		if (event.target.value === '') {
			event.target.value = '0';
			return;
		}

		const value = event.target.value;
		const alreadyHasDecimalPart = value.split('.').length > 1;
		if (alreadyHasDecimalPart) return;

		event.target.value = `${value}.00`;
	};

	const onChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		propertiesToUse.onChange(event);
	};
	return (
		<label className="pui-input__label currency-input">
			<span className="label-content">{label}</span>

			<div className="flex items-center input-container">
				<div className="currency-indicator">$</div>
				<Input {...propertiesToUse} onFocus={onFocus} onChange={onChange} onBlur={onBlur} />
			</div>
		</label>
	);
};
