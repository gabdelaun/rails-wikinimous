class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
  end

  def new
      @article = Article.new
  end

  def create
        @article = Article.new(params[:article])
    @article.save
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
     @article = Article.find(params[:id])
    @article.update(params[:article])
    redirect_to article_index_path
  end

  def destroy
     @article = Article.find(params[:id])
     @article.destroy
     redirect_to article_index_path
  end
end
