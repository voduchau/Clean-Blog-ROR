class RemoveRemoteimageFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :remoteimage, :string
  end
end
