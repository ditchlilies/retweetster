class TweetsController < ApplicationController
  def index
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
      @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
      if @tweet.save
        redirect_to @tweet, notice: "success"
      else
        render :new
      end
  end

  def edit
  end
  
private
  def tweet_params
    params.require(:tweet).permit(:name, :message)
  end  
  
  
end
