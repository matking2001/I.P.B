class ChangeTypeTelefono < ActiveRecord::Migration[6.0]
  def up
    change_table :asistentes do |t|
      t.change :telefono, :string
    end
  end

  def down
    change_table :asistentes do |t|
      t.change :telefono, :integer
    end
  end
end
