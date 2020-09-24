class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :type 
      t.integer :value 
      t.text :description
      t.timestamps
    end
  end
end
