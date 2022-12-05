class AddApartmentAttributes < ActiveRecord::Migration[6.1]
  def change
    add_column :apartments, :number, :integer
  end
end
