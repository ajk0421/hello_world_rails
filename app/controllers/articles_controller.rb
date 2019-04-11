class ArticlesController < ApplicationController
  before_action :set_article, only: [:update, :destroy]

  def index
    @articles = Article.where(public_status: true)
  end

  def show
    @article = current_user ? current_user.articles.find(params[:id]) : Article.find(params[:id])
  end

  def create
    current_user.articles.create!(article_params)
  end

  def update
    @article.update!(article_params)
  end

  def destroy
    @article.destroy!
  end

  private

    def set_article
      @article = current_user.articles.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body, :public_statu)
    end
end
