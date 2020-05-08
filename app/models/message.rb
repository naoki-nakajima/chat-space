class Message < ApplicationRecord
  belongs_to :groups
  belongs_to :users

  validates :content, presence:true, unless: :image?

  mount_uploader :image, ImageUploader
end
