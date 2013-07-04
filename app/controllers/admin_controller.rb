class AdminController < ApplicationController
 
   def showFamily( aClass, msg )   
     if (aClass != nil) then   
        msg += "<br />#{aClass}"  
        showFamily( aClass.superclass, msg )
     else
       render :text => msg
     end   
   end

   def index
      showFamily( self.class, "Class Hierarchy of self..." )
      

   end 



end
