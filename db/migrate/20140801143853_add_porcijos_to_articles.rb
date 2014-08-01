class AddPorcijosToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :porcijos, :string
  end
end
