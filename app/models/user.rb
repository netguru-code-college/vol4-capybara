class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    mount_uploader :avatar, AvatarUploader
    serialize :avatars, JSON # If you use SQLite, add this line.


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



end
