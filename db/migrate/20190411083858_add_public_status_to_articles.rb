class AddPublicStatusToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :public_status, :boolean
  end
end
