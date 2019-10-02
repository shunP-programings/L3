class TweetsController < ApplicationController
    def index 
        @tweets = Tweet.all.order('created_at DESC')
    end

    def show 
        @tweet = Tweet.find(params[:id])
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        flash[:notice] = '削除しました'
        redirect_to '/'
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(messeage: params[:tweet][:messeage], tdate: params[:tweet][:tdate])
        if @tweet.save
            flash[:notice] = 'ツイートを送信しました！！'
            redirect_to '/'
            else
            render 'new'
        end
    end

    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        tweet = Tweet.find(params[:id])
        tweet.update(messeage: params[:tweet][:messeage], tdate: params[:tweet][:tdate])
        if @tweet.save
            flash[:notice] = '変更しました'
            redirect_to '/'
            else
            render 'edit'
        end
    end
end
