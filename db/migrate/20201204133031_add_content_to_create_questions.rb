class AddContentToCreateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :create_questions, :content, :text
  end
end
