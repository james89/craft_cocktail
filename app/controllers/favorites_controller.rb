class FavoritesController < ApplicationController

  def index
    #will need to pull all favorites from DB and display in the 'index' action
    @user = User.find params[:user_id]


  end

  def new
    #display a random cocktail
    #generate a form for that cocktail
    # @user = User.find params[:user_id]
    @cocktails_all = Cocktail.all
    @cocktail = @cocktails_all.sample
    @favorite = Favorite.new
  end

  def create
    #pulling in params of form here
    #if thumbs up, saving the favorited cocktail to db
    #redirect to new (for both thumbs up and down)
    if params[:favorite][:thumbs_up]
      Favorite.create params[:favorite]
    end
    redirect_to '/favorites/new'

  end


end
