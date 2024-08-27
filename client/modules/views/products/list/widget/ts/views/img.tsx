import React from 'react';
import { Image } from 'pragmate-ui/image';
import { ImgPlaceholder } from './img-placeholder';

interface IProps {
	src: string;
	alt: string;
}

export const Img = (props: IProps) => {
	if (!props.src) return <ImgPlaceholder />;
	return <Image {...props} />;
};
