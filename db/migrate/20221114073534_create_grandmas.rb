class CreateGrandmas < ActiveRecord::Migration[7.0]
  def change
    create_table :grandmas do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
