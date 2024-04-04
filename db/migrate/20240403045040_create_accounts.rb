class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.integer :accountnum
      t.string :accounttype
      t.decimal :accountbalance
      t.string :bankname

      t.timestamps
    end
  end
end
