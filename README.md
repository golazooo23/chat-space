# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Chat-space DB設計
## usersテーブル
|id|名前|予約1|予約2|
|------|----|-------|-------|
|1|鈴木|〇〇|〇〇|
|2|山田|〇〇|〇〇|
|3|佐藤|〇〇|〇〇|
### Association
- has_many :messages
- has_many :groups_users 
- has_many  :groups,  through:  :groups_users 

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
### Association
- has_many :messages
- has_many :groups_users
- has_many  :users,  through:  :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user




