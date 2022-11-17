class AddPhotoUrlsToGrandmas < ActiveRecord::Migration[7.0]
  def change
    add_column :grandmas, :photo_url_two, :string
    add_column :grandmas, :photo_url_three, :string
  end
end
