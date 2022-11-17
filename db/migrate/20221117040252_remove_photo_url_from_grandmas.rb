class RemovePhotoUrlFromGrandmas < ActiveRecord::Migration[7.0]
  def change
    remove_column :grandmas, :photo_url_three, :string
    remove_column :grandmas, :photo_url_two, :string
  end
end
