class RenameContactColumnToAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :contact, :content
  end
end
