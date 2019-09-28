class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :img_name
      t.text :base64_img

      t.timestamps
    end
  end
end
