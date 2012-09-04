class UsersController < ApplicationController
def index
	@user = User.all
end

def new
	@user = User.new
end

def show
	@user = User.find(params[:id])
end

def edit
	@user = User.find(params[:id])
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render :new
  end
end
end