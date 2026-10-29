# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


module BuildMenuCompositeInterface
    

    def getCurrentScrollSelectionForm()
        raise NotImplementedError
    end
    

    def setCurrentScrollSelectionForm(currentScrollSelectionForm)
        raise NotImplementedError
    end
    

    def getBuildingScrollSelectionForm()
        raise NotImplementedError
    end
end

require "org/allbinary/graphics/form/ScrollSelectionForm"

