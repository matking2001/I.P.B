class AddGeneroToAsistente < ActiveRecord::Migration[6.0]
  def change
    add_column :asistentes, :genero, :string
  end
end
