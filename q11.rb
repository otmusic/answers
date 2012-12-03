class ArticleDecorator < ApplicationDecorator
  decorates :article
 
  def published_at
    model.published_at.strftime("%A, %B %e")
  end
end

@article = ArticleDecorator.decorate(Article.find(1))

%li= @article.published_at

