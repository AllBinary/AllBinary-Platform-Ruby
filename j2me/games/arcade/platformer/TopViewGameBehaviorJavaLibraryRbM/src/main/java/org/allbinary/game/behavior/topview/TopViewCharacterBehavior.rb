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

class TopViewCharacterBehavior
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellPosition)
    end
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
    end
    

    def hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
end

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Topview; autoload :BasicTopViewGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory" unless const_defined?(:BasicTopViewGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end

end; end; end; end; end

