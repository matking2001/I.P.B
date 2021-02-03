class CreateAsistentes < ActiveRecord::Migration[6.0]
  def change
    create_table :asistentes do |t|
      t.integer :identificacion
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :correo
      t.string :direccion
      t.integer :telefono
      t.string :cargo_secular
      t.string :ocupacion

      t.timestamps
    end
  end
end
