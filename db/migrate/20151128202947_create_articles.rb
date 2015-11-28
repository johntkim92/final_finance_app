class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.decimal :cash, null: false
      t.date :start_date, null: false

      t.timestamps null: false
    end
  end
end
