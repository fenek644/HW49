class CreatePoImages < ActiveRecord::Migration[5.2]
  def change
    create_table :po_images do |t|
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
