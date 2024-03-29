module Api
  module V1
    class NewsController < ApplicationController
      before_action :set_news, only: [:destroy, :update]
      # GET /news
      def index
        @news = News.all

        render json: @news
      end

      def show
        @news = News.find(params[:id])
        render json: @news
      end 

      # POST /news
      def create
        @news = News.new(news_params)

        if @news.save
          render json: @news, status: :created, location: @news
        else
          render json: @news.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /news/1
      def update
        if @news.update(news_params)
          render json: @news
        else
          render json: @news.errors, status: :unprocessable_entity
        end
      end

      # DELETE /news/1
      def destroy
        @news.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_news
          @news = News.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def news_params
          params.require(:news).permit(:title, :date, :image)
        end
    end
  end
end