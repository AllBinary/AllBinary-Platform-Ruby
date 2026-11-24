# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.behavior.topview


module ::Org; module Allbinary; module Game; module Behavior; module Topview

module TopViewCharacterInterface
    

    def terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def terrainEvent(x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def move()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def upp()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def leftp()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def rightp()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def reset()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end

end; end; end; end; end

