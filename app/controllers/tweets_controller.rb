class TweetsController < ApplicationController
  def index
  end

  def show
  end

  def new
      @tweet = Tweets.new(tweet_params)
  end

  def edit
  end
  
private
  def tweet_params
    params.require(:tweet).permit(:name, :message)
  end  
  
  
end
