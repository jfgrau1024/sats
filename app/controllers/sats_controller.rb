class SatsController < ApplicationController
  def index
    @sats = Sat.all
  end
  
  def new
    @sats = Sat.new
  end
  
  def create
        @sat = Sat.new(sat_params)
        if  @sat.save
            flash[:notice] = "Tarea agregada correctamente"
            redirect_to sat_path(@sat)
        else
            render 'new'
        end 
  end
  
  def show
        redirect_to sats_path
  end
  
  
  def edit
       @sats = Sat.find(params[:id])
  end
  
  
  def update
       @sats = Sat.find(params[:id])
       if @sats.update(sat_params)
           flash[:notice]= "Tarea actualizada correctamente"
           redirect_to sats_path(@sat)
       else
           render 'edit'
       end
  end
  
  def cerrados
     @sats = Sat.all
     
  end
  private
        
        def set_sat
        @sats = Sat.find(params[:id])
        end
    
        def sat_params
            params.require(:sat).permit(:referencia, :descripcion, :estado)
        end 
end
