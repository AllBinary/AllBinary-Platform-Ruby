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


module ::Org; module Allbinary; module Game; module Input

module BuildMenuCompositeInterface
    

    def getCurrentScrollSelectionForm()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setCurrentScrollSelectionForm(currentScrollSelectionForm)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getBuildingScrollSelectionForm()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end

end; end; end; end

