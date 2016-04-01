class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.integer :phone
      t.references :account, index: true
      t.references :job, index: true

      t.timestamps
    end
  end
end
