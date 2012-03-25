module BlogsHelper

  # ブログ記事のサニタイズを行う
  def sanitize_blog(id, contents)
    @target = contents ? Blog.find(id).contents1 : Blog.find(id).contents2
    sanitize(@target, :tags => %w(img a), :attributes => %w(src href))
  end
end
