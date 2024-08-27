import * as Sequelize from 'sequelize';
import { DataTypes, Model, Optional } from 'sequelize';
import type { ProductsCategories, ProductsCategoriesId } from './products_categories';
import type { Users, UsersId } from './users';

export interface ProductsAttributes {
  id: string;
  name: string;
  creatorUserId: string;
  timeCreated?: Date;
  timeUpdated?: Date;
  description?: string;
  img: string;
  price: number;
}

export type ProductsPk = "id";
export type ProductsId = Products[ProductsPk];
export type ProductsOptionalAttributes = "timeCreated" | "timeUpdated" | "description";
export type ProductsCreationAttributes = Optional<ProductsAttributes, ProductsOptionalAttributes>;

export class Products extends Model<ProductsAttributes, ProductsCreationAttributes> implements ProductsAttributes {
  id!: string;
  name!: string;
  creatorUserId!: string;
  timeCreated?: Date;
  timeUpdated?: Date;
  description?: string;
  img!: string;
  price!: number;

  // Products hasMany ProductsCategories via productId
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
  // Products belongsTo Users via creatorUserId
  creatorUser!: Users;
  getCreatorUser!: Sequelize.BelongsToGetAssociationMixin<Users>;
  setCreatorUser!: Sequelize.BelongsToSetAssociationMixin<Users, UsersId>;
  createCreatorUser!: Sequelize.BelongsToCreateAssociationMixin<Users>;

  static initModel(sequelize: Sequelize.Sequelize): typeof Products {
    return Products.init({
    id: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    creatorUserId: {
      type: DataTypes.CHAR(36),
      allowNull: false,
      references: {
        model: 'users',
        key: 'id'
      },
      field: 'creator_user_id'
    },
    timeCreated: {
      type: DataTypes.DATE,
      allowNull: true,
      defaultValue: Sequelize.Sequelize.literal('CURRENT_TIMESTAMP'),
      field: 'time_created'
    },
    timeUpdated: {
      type: DataTypes.DATE,
      allowNull: true,
      defaultValue: Sequelize.Sequelize.literal('CURRENT_TIMESTAMP'),
      field: 'time_updated'
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    img: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'products',
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
        name: "creator_user_id",
        using: "BTREE",
        fields: [
          { name: "creator_user_id" },
        ]
      },
    ]
  });
  }
}
