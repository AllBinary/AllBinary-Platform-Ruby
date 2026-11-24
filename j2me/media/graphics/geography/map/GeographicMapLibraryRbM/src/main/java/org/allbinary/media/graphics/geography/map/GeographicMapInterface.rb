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
# package org.allbinary.media.graphics.geography.map


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

module GeographicMapInterface
    

    def getId()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def reset()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAllBinaryTiledLayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionAtXYNoThrow(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellTypeAt(geographicMapCellPosition)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionFactory()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionFactoryInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getForegroundBasicColor()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getBackgroundBasicColor()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false)
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)

end; end; end; end; end; end

