class CreateMultis < ActiveRecord::Migration
  def change
    create_table :multis do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
