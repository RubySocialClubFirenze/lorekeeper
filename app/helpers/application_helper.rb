module ApplicationHelper

  def oreilly_image_tag(book)
    image_tag("http://akamaicovers.oreilly.com/images/#{book.isbn}/cat.gif")
  end
end
