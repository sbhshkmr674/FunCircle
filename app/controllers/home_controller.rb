class HomeController < ApplicationController
  def index
  @homes = User.all
  if params[:search]
    @homes = User.search(params[:search]).order("created_at DESC")
  else
    @homes = User.all.order("created_at DESC")
  end
  end
 
end

