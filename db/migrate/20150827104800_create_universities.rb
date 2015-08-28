class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      
      t.string :university

      t.timestamps null: false
    end
  end
end
