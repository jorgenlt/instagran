class AddHourlyRateToGrandmas < ActiveRecord::Migration[7.0]
  def change
    add_column :grandmas, :hourly_rate, :integer
  end
end
