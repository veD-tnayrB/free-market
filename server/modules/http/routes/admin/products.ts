import { Products } from '@essential-js/admin-server/engines/products';
import { Application, Request, Response } from 'express';
import * as formidable from 'formidable';
import * as path from 'path';
import { Route, checkToken, checkPermission } from '@essential-js/admin-server/helpers';
import { Response as ResponseAPI } from '@bgroup/helpers/response';

class ProductsRoutes extends Route {
	constructor() {
		super({
			manager: Products,
		});
	}
	bulkImport = async (req: Request, res: Response) => {
		try {
			const form = new formidable.IncomingForm();
			const uploadDir = path.join(__dirname, 'excel/temp');

			let savedFilePath = '';
			let fileType = '';

			form.on('fileBegin', (name, file) => {
				if (file.originalFilename) {
					const extension = path.extname(file.originalFilename);
					const newFilename = `${Date.now()}${extension}`;
					const fullPath = path.join(uploadDir, newFilename);
					file.filepath = fullPath;
					savedFilePath = fullPath;
					fileType = extension;
				}
			});

			await new Promise((resolve, reject) => {
				form.parse(req, (err, fields, files) => {
					if (err) reject(err);
					resolve({ fields, files });
				});
			});

			const finalResponse = await Products.bulkImport({ filepath: savedFilePath, fileType });
			if (!finalResponse.status) throw finalResponse.error;

			return res.status(200).json({
				status: true,
				results: finalResponse.data,
			});
		} catch (exc) {
			console.error('Error in bulk importation', exc);
			const responseError = ResponseAPI.error({ code: 500, message: exc as string });
			res.status(500).send(responseError);
		}
	};

	generateReport = async (req: Request, res: Response) => {
		try {
			let { params, header } = req.body;
			const { type } = req.params;
			const response = await Products.generateReport({
				header,
				params,
				type: type as 'xlsx' | 'csv',
			});
			if ((!response.status && 'error' in response) || !response.data) throw response.error;

			const excelPath = path.join(__dirname, response.data.pathFile);
			res.setHeader('Content-Type', 'text/html');
			return res.sendFile(excelPath);
		} catch (exc) {
			console.error('Error /generate-report', exc);
			const responseError = ResponseAPI.error({ code: 500, message: exc as string });
			res.status(500).send(responseError);
		}
	};

	getTemplate = async (req: Request, res: Response) => {
		try {
			const { type } = req.params;
			const response = await Products.getTemplate({ type: type as 'xlsx' | 'csv' });
			if ((!response.status && 'error' in response) || !response.data) throw response.error;

			const excelPath = path.join(__dirname, response.data.pathFile);
			res.setHeader('Content-Type', 'text/html');
			return res.sendFile(excelPath);
		} catch (exc) {
			console.error('Error /get-template', exc);
			const responseError = ResponseAPI.error({ code: 500, message: exc as string });
			res.status(500).send(responseError);
		}
	};

	setup = (app: Application) => {
		app.post('/admin/products/import', checkToken, checkPermission('products.import'), this.bulkImport);
		app.get(
			`/admin/products/get-template/:type`,
			checkToken,
			checkPermission('products.get-template'),
			this.getTemplate
		);
		app.post(
			`/admin/products/generate-report/:type`,
			checkToken,
			checkPermission('products.generate-report'),
			this.generateReport
		);
		app.post(`/admin/product`, checkToken, checkPermission('products.create'), this.create);
		app.put(`/admin/product/:id`, checkToken, checkPermission('products.update'), this.update);
		app.get(`/admin/products`, checkToken, checkPermission('products.list'), this.list);
		app.get(`/admin/product/:id`, checkToken, checkPermission('products.get'), this.get);
	};
}

export const products = new ProductsRoutes();
