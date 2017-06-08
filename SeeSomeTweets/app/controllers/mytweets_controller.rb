class MytweetsController < ApplicationController
skip_before_action :verify_authenticity_token
def new
end
def gettweets
     somthing = params[:somthing]
     if somthing == 'NASA'
       @tweet=Tweet.where(Kind:1)
       elsif somthing == 'Open source'
        @tweet=Tweet.where(Kind:2)
        else
         @tweet=Tweet.where(Kind:3)
    end
      @tweet.destroy_all
    TwitterApi.search(somthing).each do |tweet|
      temp = Tweet.new
      temp.text = tweet.text
      temp.userName = tweet.user.name
      if somthing == 'NASA'
      temp.kind=1
      elsif somthing == 'Open source'
      temp.kind=2
      else
      temp.kind=3
      end
        temp.save
    end
    @anothertweet=Tweet.all
    render json:@anothertweet
end


   def showmetweet
    @tweet= Tweet.where({kind:params[:kind]})
    render json:@tweet
   end


end
