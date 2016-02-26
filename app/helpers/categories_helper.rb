module CategoriesHelper
  def category_list
    categories = Category.select("id, name").order(:name)
  end
end
