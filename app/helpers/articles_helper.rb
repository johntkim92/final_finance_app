module ArticlesHelper

  def article_params
    params.require(:article).permit(:title, :body, :cash, :start_date, :tag_list)
  end

end
