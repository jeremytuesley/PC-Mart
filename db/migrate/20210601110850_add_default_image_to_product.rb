class AddDefaultImageToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :default_image, :string
  end
end
