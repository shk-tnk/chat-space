# DB設計
## users table
|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|mail|string|null: false|
### Association
- has_many :groups, through: members
- has_many :messages
- has_many :members

## groups table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
has_many :users, through: members
has_many :messages
has_many :mambers

## members table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|gropu_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messages table
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
|gropu_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group