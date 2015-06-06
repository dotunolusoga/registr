class AddPresentToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :present, :boolean
  end
end
