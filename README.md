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
|id|名前|         
|------|----|            
|1|鈴木|                   
|2|山田|                 
|3|佐藤|           

## reservationsテーブル
|id|予約|user_id|
|------|----|-------|
|1|▲|1(鈴木)|
|2|△|1(鈴木)|
|3|□|2(山田)|
|4|■|2(山田)|
|5|◇|3(佐藤)|



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




