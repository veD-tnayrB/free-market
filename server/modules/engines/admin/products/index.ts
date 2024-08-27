import { DB } from '@essential-js/admin-server/db';
import { Manager, ExcelHandler, IBulkImport, IGetTemplate, IGenerateReport } from '@essential-js/admin-server/helpers';
import { Get, IGetParams } from './get';
import { IPublish, Publish } from './publish';

export class ProductsManager extends Manager<IPublish> {
	#excelHandler: ExcelHandler;
	constructor() {
		super({ model: DB.models.Products, managerName: 'products' });
		this.#excelHandler = new ExcelHandler({
			model: this.model,
			managerName: 'products',
			templateConfig: {
				ID: 'id',
				Name: 'name',
				Description: 'description',
				'Creator user id': 'creatorUserId',
				Image: 'img',
				'Created at': 'timeCreated',
				'Updated at': 'timeUpdated',
			},
		});
	}

	bulkImport = (params: IBulkImport) => {
		return this.#excelHandler.bulkImport(params);
	};

	generateReport = (params: IGenerateReport) => {
		return this.#excelHandler.generateReport(params);
	};

	getTemplate = (params: IGetTemplate) => {
		return this.#excelHandler.getTemplate(params);
	};

	get = (params: IGetParams) => {
		return Get.execute(params);
	};

	create = (params: IPublish) => {
		return Publish.create(params);
	};

	update = (params: IPublish) => {
		return Publish.update(params);
	};
}

export /*bundle*/ const Products = new ProductsManager();
