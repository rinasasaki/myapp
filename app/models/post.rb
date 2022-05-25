class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  def user
    return User.find_by(id: self.user_id)
  end

end
