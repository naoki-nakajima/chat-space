## userテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true、add＿index|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

## Association
- has_many :groups
- has_many :groups, through: :group_users
- has many :messages


## groupテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false, unique: true, add_index|

### Association
- has_many :users
- has many :users, through: :group_users


## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
 
 
 ## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
