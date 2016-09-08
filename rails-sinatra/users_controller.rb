class UsersController < ApplicationController

  def new
    @user = User.new
    erb :new 
  end
  # /users/new

  def create
    @user = User.create(:name => params["name"], :hometown => params["hometown"])
    redirect to 'users/#{@user.id}'
  end
  #POST /users
  
  def index
    @users = User.all
    erb :index
  end
  #GET /users

  def show
    @user = User.find_by(:id => params[:id])
    erb :show 
  end
  #GET /users/:id

  def edit
    @user = User.find_by(:id => params[:id])
    erb :edit 
  end
  #GET /users/:id/edit

  def update
    @user = User.find_by(:id => params[:id])
    @user.name = params["name"]
    @user.hometown = params["hometown"]
    @user.save
    redirect to '/users/#{@user.id}'
  end
  #PATCH /users/:id

  def destroy
    @user = User.find_by(:id => params[:id])
    @user.delete
    redirect to '/users'
  end
  #'/users/:id/delete'
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
