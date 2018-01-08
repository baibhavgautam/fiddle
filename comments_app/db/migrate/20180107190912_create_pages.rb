class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :body
      t.datetime :deleted_at 
      t.timestamps
    end
  end
end
