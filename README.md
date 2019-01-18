## books table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|author|string|null: false|
|publisher|string|null: false|
|price|intger|null: false|
|genre|string|null: false|
|summary|text|
|point|string|
|image|string|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user
- has_many :comments


## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail_address|string|null: false|
|image|string|
|profile|string|

### Association
- has_many :books
- has_many :comments


## Comments table
|Column|type|Options|
|------|----|-------|
|body|string|null: false|
|book_id|integer|null: false|
|user_id|integer|null: false|

### Association
- belong_to :user
- belong_tp :book
