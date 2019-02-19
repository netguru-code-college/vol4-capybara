class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]
         
    def self.from_omniauth(auth)
      oauth_user = where(provider: auth.provider, uid: auth.uid).first

      return oauth_user if oauth_user

      find_or_initialize_by(email: auth.info.email).tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.password = Devise.friendly_token[0,20] if user.new_record?

        user.save!
      end
    end
    
end
