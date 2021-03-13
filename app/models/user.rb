class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise	:database_authenticatable, :registerable, :rememberable, :validatable, 
					:omniauthable, :timeoutable, 
					omniauth_providers: %i[facebook twitter google_oauth2]

#呼ばれたモデル(Userのprovider uid に引数代入　重複無しでemail password保存
	
	def self.from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
			user.email = auth.info.email
			user.password = Devise.friendly_token[0,20]
		end
	end
end
