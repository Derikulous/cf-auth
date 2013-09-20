class WelcomeController < ApplicationController
def index
  @users = User.all
end

 def about
 end

 def show
 end
end
