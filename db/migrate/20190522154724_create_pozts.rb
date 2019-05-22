class CreatePozts < ActiveRecord::Migration[5.2]
  def change
    create_table :pozts do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
