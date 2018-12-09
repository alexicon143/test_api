class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
  :rememberable, :password_expirable, :secure_validatable,
  :password_archivable, :session_limitable, :expirable
end
