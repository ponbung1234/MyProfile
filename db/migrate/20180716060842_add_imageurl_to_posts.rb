class AddImageurlToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :imageurl, :string
  end
end
