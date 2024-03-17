class AddStatusToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :status, :boolean, default: true
    add_column :products, :size, :integer
  end
end
