class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :finished
      t.date :finishdate
      t.integer :rate

      t.timestamps
    end
  end
end
