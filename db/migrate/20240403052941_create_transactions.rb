class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :name
      t.boolean :credit
      t.boolean :debit
      t.decimal :amount

      t.timestamps
    end
  end
end
