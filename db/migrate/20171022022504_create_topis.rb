class CreateTopis < ActiveRecord::Migration[5.1]
  def change
    create_table :topis do |t|
      t.string :title

      t.timestamps
    end
  end
end
