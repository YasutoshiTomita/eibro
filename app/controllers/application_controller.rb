class ApplicationController < ActionController::Base
#top show index はログインしなくてもアクセスできる
	before_action :authenticate_user!, except: [:show, :index, :top]

end
