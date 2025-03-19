class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.integer :documento

      t.timestamps
    end
  end
end
