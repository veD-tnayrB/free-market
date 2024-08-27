import * as Sequelize from 'sequelize';
import { DataTypes, Model, Optional } from 'sequelize';

export interface ProductCategoriesAttributes {
  categoryId: string;
  productId: string;
}

export type ProductCategoriesCreationAttributes = ProductCategoriesAttributes;

export class ProductCategories extends Model<ProductCategoriesAttributes, ProductCategoriesCreationAttributes> implements ProductCategoriesAttributes {
  categoryId!: string;
  productId!: string;


  static initModel(sequelize: Sequelize.Sequelize): typeof ProductCategories {
    return ProductCategories.init({
    categoryId: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      field: 'category_id'
    },
    productId: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      field: 'product_id'
    }
  }, {
    sequelize,
    tableName: 'product_categories',
    timestamps: false
  });
  }
}
