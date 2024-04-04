class AddAccountToBill < ActiveRecord::Migration[7.1]
  def change
    add_reference :bills, :account,  foreign_key: true
  end
end
