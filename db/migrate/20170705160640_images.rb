class Images < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      ## Database authenticatable
      t.string :description
      t.integer :user_id
    end
  end
end
