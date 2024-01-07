class SearchesController < ApplicationController
  beform_action :authenticate_user!
  
  def search
    @range = params[:range]
    
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @book = Book.looks(params[:search], params[:word])
    end
  end  
end
