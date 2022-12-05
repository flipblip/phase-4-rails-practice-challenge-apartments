class AddForeignKeysToTenants < ActiveRecord::Migration[6.1]
  def change
    add_column :tenants, :apartment_id, :integer
    add_column :tenants, :lease_id, :integer
  end
end
