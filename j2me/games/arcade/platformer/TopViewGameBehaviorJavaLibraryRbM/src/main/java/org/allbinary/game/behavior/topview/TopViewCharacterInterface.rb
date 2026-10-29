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


module TopViewCharacterInterface
    

    def terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y)
        raise NotImplementedError
    end
    

    # throws Exception
    def terrainEvent(x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        raise NotImplementedError
    end
    

    def move()
        raise NotImplementedError
    end
    

    def upp()
        raise NotImplementedError
    end
    

    def leftp()
        raise NotImplementedError
    end
    

    def rightp()
        raise NotImplementedError
    end
    

    # throws Exception
    def reset()
        raise NotImplementedError
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

