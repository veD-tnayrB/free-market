import * as Sequelize from 'sequelize';
import { DataTypes, Model, Optional } from 'sequelize';
import type { Categories, CategoriesId } from './categories';
import type { Products, ProductsId } from './products';

export interface ProductsCategoriesAttributes {
  categoryId: string;
  productId: string;
  id: string;
}

export type ProductsCategoriesPk = "id";
export type ProductsCategoriesId = ProductsCategories[ProductsCategoriesPk];
export type ProductsCategoriesCreationAttributes = ProductsCategoriesAttributes;

export class ProductsCategories extends Model<ProductsCategoriesAttributes, ProductsCategoriesCreationAttributes> implements ProductsCategoriesAttributes {
  categoryId!: string;
  productId!: string;
  id!: string;

  // ProductsCategories belongsTo Categories via categoryId
  category!: Categories;
  getCategory!: Sequelize.BelongsToGetAssociationMixin<Categories>;
  setCategory!: Sequelize.BelongsToSetAssociationMixin<Categories, CategoriesId>;
  createCategory!: Sequelize.BelongsToCreateAssociationMixin<Categories>;
  // ProductsCategories belongsTo Products via productId
  product!: Products;
  getProduct!: Sequelize.BelongsToGetAssociationMixin<Products>;
  setProduct!: Sequelize.BelongsToSetAssociationMixin<Products, ProductsId>;
  createProduct!: Sequelize.BelongsToCreateAssociationMixin<Products>;

  static initModel(sequelize: Sequelize.Sequelize): typeof ProductsCategories {
    return ProductsCategories.init({
    categoryId: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      references: {
        model: 'categories',
        key: 'id'
      },
      field: 'category_id'
    },
    productId: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      references: {
        model: 'products',
        key: 'id'
      },
      field: 'product_id'
    },
    id: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      primaryKey: true
    }
  }, {
    sequelize,
    tableName: 'products_categories',
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
      {
        name: "fk_products_categories_category",
        using: "BTREE",
        fields: [
          { name: "category_id" },
        ]
      },
      {
        name: "fk_products_categories_product",
        using: "BTREE",
        fields: [
          { name: "product_id" },
        ]
      },
    ]
  });
  }
}
