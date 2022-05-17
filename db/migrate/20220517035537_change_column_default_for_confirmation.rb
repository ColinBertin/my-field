class ChangeColumnDefaultForConfirmation < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :status, default: 0
  end
end
