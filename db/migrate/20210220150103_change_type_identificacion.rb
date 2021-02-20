class ChangeTypeIdentificacion < ActiveRecord::Migration[6.0]
  def up
    change_table :asistentes do |t|
      t.change :identificacion, :string
    end
  end

  def down
    change_table :asistentes do |t|
      t.change :identificacion, :integer
    end
  end
end
