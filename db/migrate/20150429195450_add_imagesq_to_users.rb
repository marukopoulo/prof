class AddImagesqToUsers < ActiveRecord::Migration
  def change
    add_column :users, :imagesq, :string
  end
end
