class CreateRois < ActiveRecord::Migration
  def change
    create_table :rois do |t|
      t.float :spent
      t.integer :retailers
      t.float :purchase_volume
      t.float :contribution_margin
      t.float :sales_increase
      t.integer :leads
      t.integer :leads_value

      t.timestamps
    end
  end
end
