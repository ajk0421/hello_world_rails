class ChangeArticlesStatusNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :articles, :status, false
  end
end
