class AddRemoteimageToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :remoteimage, :string
  end
end
