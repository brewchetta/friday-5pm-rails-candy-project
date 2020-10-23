class AddPictureToTreats < ActiveRecord::Migration[6.0]
  def change
    add_column :treats, :picture_url, :string
  end
end
