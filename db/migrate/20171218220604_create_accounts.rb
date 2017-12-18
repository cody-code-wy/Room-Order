class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.text :notes

      t.timestamps
    end
  end
end
