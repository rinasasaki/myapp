class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.user_id)
  end

end




