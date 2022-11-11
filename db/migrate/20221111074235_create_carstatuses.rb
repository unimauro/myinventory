class CreateCarstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :carstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
