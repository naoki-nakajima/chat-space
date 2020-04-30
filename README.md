
## userテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :groups, through: :group_users
- has many :messages


## groupテーブル

|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|

### Association
- has many :users, through: :group_users


## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|nul|l: false|
|image|string|null: false|
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
