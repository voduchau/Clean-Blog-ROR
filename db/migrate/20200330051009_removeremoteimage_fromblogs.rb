class RemoveremoteimageFromblogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :remoteimage
  end
end
