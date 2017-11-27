class AddLastUpdatedByToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :updated_by_user_id, :integer
  end
end
