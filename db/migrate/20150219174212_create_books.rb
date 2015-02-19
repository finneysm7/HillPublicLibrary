class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author, :null => false
      t.string :title, :null => false
      t.date :publication_date
      t.string :dewey_decimal_number
      t.boolean :status
      
      t.timestamps
    end
  end
end
