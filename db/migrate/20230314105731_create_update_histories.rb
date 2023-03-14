class CreateUpdateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :update_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
