class Asistente < ApplicationRecord

  validates :identificacion, :primer_nombre, :primer_apellido, :segundo_apellido, :telefono, :direccion, :correo, :ocupacion, presence: true
  validates :telefono,numericality: { only_integer: true }, length: { maximum: 10 }
  validates :identificacion, uniqueness: true
  validates :identificacion, length: { maximum: 10 }
  validates :primer_nombre,:primer_apellido, :segundo_apellido, format: { with: /\A[a-zA-Z]+\z/,
   message: "Solo se permiten letras" }
  # Roles con rolify
end
