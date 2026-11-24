#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.game.layer


module ::Org; module Allbinary; module Game; module Layer

module LayerPlacementInterface
    

    def getWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLayerType()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getInstance()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType" unless const_defined?(:LayerPlacementType, false)

end; end; end; end

