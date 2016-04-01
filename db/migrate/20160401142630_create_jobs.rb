class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true
      t.datetime :time
      t.boolean :finished
      t.float :order
      t.references :multi, index: true
      t.float :distance
      t.boolean :checkin

      t.timestamps
    end
  end
end
