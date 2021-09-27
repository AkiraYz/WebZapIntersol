class CreateCelldbs < ActiveRecord::Migration[6.1]
  def change
    create_table :celldbs do |t|
      t.string :cellnumber

      t.timestamps
    end
  end
end
