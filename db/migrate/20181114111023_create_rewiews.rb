class CreateRewiews < ActiveRecord::Migration[5.2]
  def change
    create_table :rewiews do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
