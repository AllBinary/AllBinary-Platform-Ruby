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
# package org.allbinary.media.graphics.geography.map.drop

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop

class BaseDropCellPositionGenerator
    include DropCellPositionGeneratorInterface
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
    end
    java_overload :update, 2
    

    # throws Exception
    def isDropAllowedAt(geographicMapCellPosition)
        return true
    end
    java_overload :isDropAllowedAt, 1
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    java_overload :processTick, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end

end; end; end; end; end; end; end

