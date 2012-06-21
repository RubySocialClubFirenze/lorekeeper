ActiveAdmin.register Book do

  index :as => :grid do |book|
    div do
      a :href => admin_book_path(book) do
        oreilly_image_tag(book)
      end
    end
    a truncate(book.title), :href => admin_book_path(book)
  end
  
end
