class FavoritesController < ApplicationController

  def index
    #will need to pull all favorites from DB and display in the 'index' action
    user = current_user
    @user_cocktails = user.cocktails


  end

  def new
    #display a random cocktail
    #generate a form for that cocktail
    # @user = User.find params[:user_id]

    #if user clicks
    @cocktails_all = Cocktail.all
    @cocktail = @cocktails_all.sample
    @favorite = Favorite.new
  end




  def create
    #pulling in params of form here after user clicks submit
    #if thumbs up, saving the favorited cocktail to db
    #redirect to new (for both thumbs up and down)

    if params[:favorite]
      favorite = Favorite.new
      favorite.cocktail_id = params[:favorite][:cocktail_id]
      favorite.user_id = current_user.id
      favorite.save

    end
    redirect_to '/favorites/new'

  end


end
