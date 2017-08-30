class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :age
      t.string :eyes
      t.string :hair
      t.string :gender
      t.boolean :alive, null:false, default:true

      t.timestamps
    end
  end
end
