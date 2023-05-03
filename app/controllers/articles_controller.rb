def show
  @article = Article.find(params[:id])
  if @article.isPublished
    render :show
  else
    redirect_to articles_path
  end
end
