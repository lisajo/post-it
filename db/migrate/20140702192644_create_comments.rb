class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :body
    	 t.integer :user_id, :post_id
    	 t.timestamps
    	 add_column :comments, :body, :text
    	 add_column :comments, :user_id, :integer
    	 add_column :comments, :post_id, :integer
    	 add_column :comments, :created_at, :datetime
    	 add_column :comments, :updated_at, :datetime
    end
  end
end
