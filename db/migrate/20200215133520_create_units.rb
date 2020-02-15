class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.float :valor
      t.date :fecha

      t.timestamps
    end
  end
end
