class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :status
      t.string :descreption

      t.timestamps
    end
  end
end
