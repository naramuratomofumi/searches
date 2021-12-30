# README

## users テーブル

| column             | type       | options                       |
| ------------------ | ---------- | ----------------------------- |
| nickname           | string     | null: false                   |
| email              | string     | null: false, uniqueness: true |
| encrypted_password | string     | null: false                   |
| fav_col_id         | integer    | null: false                   |

### Association
- has_many :prototypes
- has_many :likes

## prototype テーブル

| column                | type       | options                       |
| --------------------- | ---------- | ----------------------------- |
| image                 |            | null: false                   |
| season_id             | integer    | null: false, uniqueness: true |
| main_tops_category_id | integer    | null: false                   |
| main_tops_col_id      | integer    | null: false                   |
| tops_category_id      | integer    |                               |
| tops_col_id           | integer    |                               |
| bottom_category_id    | integer    |                               |
| bottom_col_id         | integer    |                               |
| acc_category_id       | integer    |                               |
| acc_col_id            | integer    |                               |
| text                  | text       | null: false                   |
| user                  | references | null: false, foreign_key:true |

### Association
- belongs_to :user
- has_many   :likes

## like テーブル

| column            | type       | options                        |
| ----------------- | ---------- | ------------------------------ |
| user              | references | null: false, foreign_key: true |
| prototype         | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :prototype
