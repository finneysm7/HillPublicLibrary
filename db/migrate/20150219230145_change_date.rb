class ChangeDate < ActiveRecord::Migration
  def change
    remove_column :books, :publication_date
    add_column :books, :publication_date, :string
  end
end
