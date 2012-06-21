class Book < ActiveRecord::Base
  attr_accessible :isbn, :abstract, :author, :cover_img, :title
end
