class RenameReplyColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :resply, :reply
  end
end
