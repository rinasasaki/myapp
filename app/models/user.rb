class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
<<<<<<< HEAD
      :recoverable, :rememberable, :validatable
=======
  :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy, foreign_key: :post_user_id
>>>>>>> e83a75146479e5d2c1b9a2e7b8e3e9e293ec9c9c
=======
  :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy, foreign_key: :post_user_id
>>>>>>> e83a75146479e5d2c1b9a2e7b8e3e9e293ec9c9c
end
