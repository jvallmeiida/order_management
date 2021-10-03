class CreateTableToManagementCenterOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :table_to_management_center_orders do |t|
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
