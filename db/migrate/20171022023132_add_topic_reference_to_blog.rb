class AddTopicReferenceToBlog < ActiveRecord::Migration[5.1]
  def change
    add_reference :blogs, :topi, foreign_key: true
  end
end
