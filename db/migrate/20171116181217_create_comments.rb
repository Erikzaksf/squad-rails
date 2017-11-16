class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :user, :text
      t.column :resply, :text
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
