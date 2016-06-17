class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :menu_title

      t.timestamps null: false
    end
  end
end
