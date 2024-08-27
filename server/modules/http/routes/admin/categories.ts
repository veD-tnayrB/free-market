import { Categories } from '@essential-js/admin-server/engines/categories';
import { Application, Request, Response } from 'express';
import * as formidable from 'formidable';
import * as path from 'path';
import { Route, checkToken, checkPermission } from '@essential-js/admin-server/helpers';
import { Response as ResponseAPI } from '@bgroup/helpers/response';

class CategoriesRoutes extends Route {
	constructor() {
		super({
			manager: Categories,
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

			const finalResponse = await Categories.bulkImport({ filepath: savedFilePath, fileType });
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
			const response = await Categories.generateReport({
				header,
				params,
				type: type as 'xlsx' | 'csv',
			});
			if ((!response.status && 'error' in response) || !response.data) throw response.error;

			const excelPath = path.join(__dirname, response.data.pathFile);
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
			const response = await Categories.getTemplate({ type: type as 'xlsx' | 'csv' });
			if ((!response.status && 'error' in response) || !response.data) throw response.error;

			const excelPath = path.join(__dirname, response.data.pathFile);
			return res.sendFile(excelPath);
		} catch (exc) {
			console.error('Error /get-template', exc);
			const responseError = ResponseAPI.error({ code: 500, message: exc as string });
			res.status(500).send(responseError);
		}
	};

	setup = (app: Application) => {
		app.post('/admin/categories/import', checkToken, checkPermission('categories.import'), this.bulkImport);
		app.get(
			`/admin/categories/get-template/:type`,
			checkToken,
			checkPermission('categories.get-template'),
			this.getTemplate
		);
		app.post(
			`/admin/categories/generate-report/:type`,
			checkToken,
			checkPermission('categories.generate-report'),
			this.generateReport
		);
		app.post(`/admin/category`, checkToken, checkPermission('categories.create'), this.create);
		app.put(`/admin/category/:id`, checkToken, checkPermission('categories.update'), this.update);
		app.get(`/admin/categories`, checkToken, checkPermission('categories.list'), this.list);
		app.get(`/admin/category/:id`, checkToken, checkPermission('categories.get'), this.get);
	};
}

export const categories = new CategoriesRoutes();
