# README

## アプリケーション名
- SEARCHES

## アプリケーション概要
- 投稿されているコーディネート情報を検索ができ、自身が合わせたいカラーのコーディネートを参考にできます。

## URL
- https://searches-app-123456.herokuapp.com/

## テスト用アカウント

## 利用方法

## アプリケーションを開発した背景
- 知人から課題をヒアリングし、「自分の持っている服をどうやって合わせていいかわからない」という課題が判明しました。
課題を分析した結果、「簡単に検索できるアプリケーションがない」が真因であると仮説を立てました。
同様の問題を抱えているユーザーも多いと推測し、真因を解決するために、コーディネートを共有しユーザー同士でコーディネートの参考にできるアプリケーションを開発することにしました。

## 洗い出した要件
- https://docs.google.com/spreadsheets/d/1hi3gdePxh5kB7yADKcTf05Zh2-8vjqyvhzQTjyo38ck/edit#gid=982722306

## 実装した機能についての画像やGIFおよび説明

## 実装予定の機能
- 検索機能
複数の指定から要件を絞って検索できるようにしたいです。
- トップ画面にお気に入りカラーを参考にマッチしそうな画像を表示できるようにしたいです。
- いいねの非同期通信で行えるようにしたいです。

## データベース設計
- [![Image from Gyazo](https://i.gyazo.com/c94051dc41487fcd42f08b8968ad59c1.png)](https://gyazo.com/c94051dc41487fcd42f08b8968ad59c1)

## 画面遷移図
- [![Image from Gyazo](https://i.gyazo.com/c428154735e5e242d1e9dd647fab7d22.png)](https://gyazo.com/c428154735e5e242d1e9dd647fab7d22)

## 開発環境
- フロントエンド：HTML,CSS/JavaScript
- バックエンド：Ruby/Ruby on Rails
- テスト：RSpec
- テキストエディタ：Visual Studio Code

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
| season_id             | integer    | null: false                   |
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
