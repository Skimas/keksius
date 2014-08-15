class ArticlesController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def new
	end

	def index
		@articles = Article.all.paginate(page: params[:page], per_page: 5)
	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end

	private
	  def article_params
	  	params.require(:article).permit(:title, :text, :porcijos, :bootsy_image_gallery_id)
	  end
end
