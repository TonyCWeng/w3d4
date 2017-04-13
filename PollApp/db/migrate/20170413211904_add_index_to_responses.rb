class AddIndexToResponses < ActiveRecord::Migration[5.0]
  def change
    add_index :responses, :user_id
    add_index :responses, :answer_id
  end
end
