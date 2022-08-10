class PagesController < ApplicationController
  def index
    return 0 #params[:x].to_i + params[:y].to_i
  end
  def create
    @user = User.create(email: params[:email],age: params[:age], comment: params[:comment]) #para guardar en la bbdd a nuestros usuarios (o los registros que sean)
  end
  def dashboard
    #@users = User.all #el metodo Users tiene que comunicarse con el modelo y pedirle info de los usuarios que buscamos 
    if params[:email].present?
    @users = User.where('email = ?', params[:email]) 
      #filtramos
    else
    @users = User.find_valid
  end
  # Es necesario guardar la info en variables de instancia ya que esta es la forma de poder ocuparlas

# Utilizaremos un nombre plural para la variable ya que tiene varios usuarios
end
end
