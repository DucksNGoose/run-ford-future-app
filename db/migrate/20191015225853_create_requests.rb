class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.boolean :is_processed

      t.timestamps
    end
  end
end
