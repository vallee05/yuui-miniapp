class TweetsController < ApplicationController
  
  def index
    @tweet = Tweet.find(3)
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :text)
  end

end
