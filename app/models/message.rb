class Message < ApplicationRecord
  belongs_to :groups
  belong_to :users

  validates :content, presence:true, unless: :image?

  mount_uploader :image, ImageUploader
end
