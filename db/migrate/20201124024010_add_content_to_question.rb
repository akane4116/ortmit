class AddContentToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :content, :text
  end
end
