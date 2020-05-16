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
|name|string|null: false|
|email|text|null: false, match(/@.+/|
|password|string|null: false,maxlength: "8"|

### Association
- has_many :groups
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|gropename|string|null: false|

### Association
- belongs_to :users
- has_many :messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|groupes_users_id|integer|null: false|
|created_at|date|

### Association
- belongs_to :groups
- belongs_to :users