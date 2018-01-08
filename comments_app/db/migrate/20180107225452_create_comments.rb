class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author_email
      t.string :body
      t.integer :page_id
      t.integer :comment_id
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
