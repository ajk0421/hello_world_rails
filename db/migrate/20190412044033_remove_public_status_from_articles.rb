class RemovePublicStatusFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :public_status, :boolean
  end
end
