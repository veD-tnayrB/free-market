import { DB } from '@essential-js/admin-server/db';
import { Manager, ExcelHandler, IBulkImport, IGetTemplate, IGenerateReport } from '@essential-js/admin-server/helpers';
import { IPublish, Publish } from './publish';

export class CategoriesManager extends Manager<IPublish> {
	#excelHandler: ExcelHandler;
	constructor() {
		super({ model: DB.models.Categories, managerName: 'categories' });
		this.#excelHandler = new ExcelHandler({
			model: this.model,
			managerName: 'categories',
			templateConfig: {
				ID: 'id',
				Name: 'name',
				Description: 'description',
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

	create = (params: IPublish) => {
		return Publish.create(params);
	};

	update = (params: IPublish) => {
		return Publish.update(params);
	};
}

export /*bundle*/ const Categories = new CategoriesManager();
