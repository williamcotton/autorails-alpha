class AddPublishedAtToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :publishedAt, :datetime
  end
end
