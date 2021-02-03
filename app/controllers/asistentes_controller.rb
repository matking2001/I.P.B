class AsistentesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asistente, only:[:show, :edit, :update, :destroy]

  def index
    @asistentes = Asistente.all
    respond_html_and_csv
  end

  def respond_html_and_csv
    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = 'attachment; filename="registros.xlsx"'
      end
    end
  end

  def show
  end

  def new
    @asistente = Asistente.new
  end

  def create
    @asistente = Asistente.new(asistente_params)
    if @asistente.save
      redirect_to asistentes_path
      flash[:success]= "Registro exitoso"
    else
      render :new
    end 
  end
  
  def edit
  end

  def update
    if @asistente.update(asistente_params)
      redirect_to asistente_path
      flash[:notice]= "Actualización exitosa"
    else
      render :edit
    end  
  end

  def destroy
    @asistente.destroy
    redirect_to asistentes_path
    flash[:alert]= "Registro eliminado"
  end
  
  

  private

  def set_asistente
    @asistente = Asistente.find(params[:id])
  end

  def asistente_params
    params.require(:asistente).permit(:identificacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :telefono, :correo, :direccion, :ocupacion, :cargo_secular)
  end

end
