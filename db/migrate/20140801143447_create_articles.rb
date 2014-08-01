class CreateArticles < ActiveRecord::Migration
  def update
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :porcijos

      t.timestamps
    end
  end
end
