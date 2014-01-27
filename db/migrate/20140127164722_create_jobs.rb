class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :type
      t.string :phone
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
