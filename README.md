# README

## アプリケーション名
- SEARCHES

## アプリケーション概要
- 投稿されているコーディネート情報を検索ができ、自身が合わせたいカラーのコーディネートを参考にできます。

## URL
- https://searches-app-123456.herokuapp.com/

## アプリケーションを開発した背景
- 知人から課題をヒアリングし、「自分の持っている服をどうやって合わせていいかわからない」という課題が判明しました。
課題を分析した結果、「簡単に検索できるアプリケーションがない」が真因であると仮説を立てました。
同様の問題を抱えているユーザーも多いと推測し、真因を解決するために、コーディネートを共有しユーザー同士でコーディネートを参考にできるアプリケーションを開発することにしました。

## 洗い出した要件
- https://docs.google.com/spreadsheets/d/1hi3gdePxh5kB7yADKcTf05Zh2-8vjqyvhzQTjyo38ck/edit#gid=982722306

## 実装した機能についての画像やGIFおよび説明
- ユーザー登録ができます。
[![Image from Gyazo](https://i.gyazo.com/4133f35d2ec48871927084982d378d00.gif)](https://gyazo.com/4133f35d2ec48871927084982d378d00)

- 画像を投稿できます。
[![Image from Gyazo](https://i.gyazo.com/c70bcd3e7734802ad97bb1ad51fb7be0.gif)](https://gyazo.com/c70bcd3e7734802ad97bb1ad51fb7be0)
[![Image from Gyazo](https://i.gyazo.com/62bdc40883595585742ac86702426fb5.gif)](https://gyazo.com/62bdc40883595585742ac86702426fb5)

- お気に入りボタンで他ユーザーの投稿を評価できます。
[![Image from Gyazo](https://i.gyazo.com/cfdd42b0886614c20f8cb3a7ad28e51f.gif)](https://gyazo.com/cfdd42b0886614c20f8cb3a7ad28e51f)

- 検索ができます。
[![Image from Gyazo](https://i.gyazo.com/61ece15d6c810d74c7949228e01451e4.gif)](https://gyazo.com/61ece15d6c810d74c7949228e01451e4)

- カテゴリーやカテゴリーカラーで絞って細かい検索ができます。
[![Image from Gyazo](https://i.gyazo.com/e310c7e65c066c1919c4796877557c8f.gif)](https://gyazo.com/e310c7e65c066c1919c4796877557c8f)
[![Image from Gyazo](https://i.gyazo.com/d30172187c7cc874b978d7a02eaec445.gif)](https://gyazo.com/d30172187c7cc874b978d7a02eaec445)


## 実装予定の機能
- 検索機能
複数の指定から要件を絞って検索できるようにしたいです。
- トップ画面にお気に入りカラーを参考にマッチしそうな画像を表示できるようにしたいです。
- いいねの非同期通信で行えるようにしたいです。
- 自身が投稿した画像は検索にヒットしないようにしたいです。
- ユーザーページを作成して自身の投稿一覧ページを実装したいです。
- ユーザー情報を修正できるようにしたいです。


## データベース設計
[![Image from Gyazo](https://i.gyazo.com/c94051dc41487fcd42f08b8968ad59c1.png)](https://gyazo.com/c94051dc41487fcd42f08b8968ad59c1)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/c428154735e5e242d1e9dd647fab7d22.png)](https://gyazo.com/c428154735e5e242d1e9dd647fab7d22)

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
