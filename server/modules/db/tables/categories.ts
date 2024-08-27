import * as Sequelize from 'sequelize';
import { DataTypes, Model, Optional } from 'sequelize';
import type { ProductsCategories, ProductsCategoriesId } from './products_categories';

export interface CategoriesAttributes {
  id: string;
  name: string;
  description?: string;
  timeCreated: Date;
  timeUpdated: Date;
}

export type CategoriesPk = "id";
export type CategoriesId = Categories[CategoriesPk];
export type CategoriesOptionalAttributes = "description" | "timeCreated" | "timeUpdated";
export type CategoriesCreationAttributes = Optional<CategoriesAttributes, CategoriesOptionalAttributes>;

export class Categories extends Model<CategoriesAttributes, CategoriesCreationAttributes> implements CategoriesAttributes {
  id!: string;
  name!: string;
  description?: string;
  timeCreated!: Date;
  timeUpdated!: Date;

  // Categories hasMany ProductsCategories via categoryId
  productsCategories!: ProductsCategories[];
  getProductsCategories!: Sequelize.HasManyGetAssociationsMixin<ProductsCategories>;
  setProductsCategories!: Sequelize.HasManySetAssociationsMixin<ProductsCategories, ProductsCategoriesId>;
  addProductsCategory!: Sequelize.HasManyAddAssociationMixin<ProductsCategories, ProductsCategoriesId>;
  addProductsCategories!: Sequelize.HasManyAddAssociationsMixin<ProductsCategories, ProductsCategoriesId>;
  createProductsCategory!: Sequelize.HasManyCreateAssociationMixin<ProductsCategories>;
  removeProductsCategory!: Sequelize.HasManyRemoveAssociationMixin<ProductsCategories, ProductsCategoriesId>;
  removeProductsCategories!: Sequelize.HasManyRemoveAssociationsMixin<ProductsCategories, ProductsCategoriesId>;
  hasProductsCategory!: Sequelize.HasManyHasAssociationMixin<ProductsCategories, ProductsCategoriesId>;
  hasProductsCategories!: Sequelize.HasManyHasAssociationsMixin<ProductsCategories, ProductsCategoriesId>;
  countProductsCategories!: Sequelize.HasManyCountAssociationsMixin;

  static initModel(sequelize: Sequelize.Sequelize): typeof Categories {
    return Categories.init({
    id: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING(45),
      allowNull: false
    },
    description: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    timeCreated: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: Sequelize.Sequelize.literal('CURRENT_TIMESTAMP'),
      field: 'time_created'
    },
    timeUpdated: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: Sequelize.Sequelize.literal('CURRENT_TIMESTAMP'),
      field: 'time_updated'
    }
  }, {
    sequelize,
    tableName: 'categories',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
  }
}
