class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.string :reference_url
      t.text :notes
      t.integer :cat_nationality
      t.integer :cat_main_or_side
      t.string :tags
      t.string :materials
      t.datetime :created
      t.datetime :updated

      t.timestamps
    end
  end
end
