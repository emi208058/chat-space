## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|email|string|unll: false|
|password|string|null: false|

### Association
- has_many :groups
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groupename|string|null: false|

### Association
- belongs_to :user
- has_many :messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|grope_id|integer|null:false, foreign_key: true|
|user_id|integer|null: false, forregn_key: true|

### Association
- belongs_to :group
- belongs_to :user