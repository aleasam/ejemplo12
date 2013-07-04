
class PrincipalController < ApplicationController
  def index
     mensaje = "Hola a todos...<br>"
     ["Pedro", "Pablo", "Juan"].each do |nombre|
       mensaje += "y a "+nombre+" tambien<br>"
     end
     render :text => mensaje
   end
end