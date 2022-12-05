class AddTenantAttributes < ActiveRecord::Migration[6.1]
  def change
    add_column :tenants, :name, :string
    add_column :tenants, :age, :integer
  end
end
