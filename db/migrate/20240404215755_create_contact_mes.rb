class CreateContactMes < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_mes do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :description

      t.timestamps
    end
  end
end
