class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.integer    :season_id,              null: false
      t.integer    :main_tops_category_id,  null: false
      t.integer    :main_tops_col_id,       null: false
      t.integer    :tops_category_id
      t.integer    :tops_col_id
      t.integer    :bottom_category_id
      t.integer    :bottom_col_id
      t.integer    :acc_category_id 
      t.integer    :acc_col_id
      t.text       :text,                   null: false 
      t.references :user,                   null: false, foreign_key: true
      t.timestamps
    end
  end
end
