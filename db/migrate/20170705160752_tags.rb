class Tags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      ## Database authenticatable
      t.string :name
      t.integer :image_id
      t.integer :user_id
    end
  end
end
