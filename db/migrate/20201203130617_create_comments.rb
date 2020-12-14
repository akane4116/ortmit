class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
       t.text :name
       t.text :content
       t.integer :topic_id
       t.integer :user_id
       t.references :user, foreign_key: true
       t.references :topic, foreign_key: true
       
      t.timestamps
    end
  end
end
