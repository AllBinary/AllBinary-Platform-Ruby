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

module GeographicMapCompositeInterface
    

    def geographicMapCellTypeArray()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getGeographicMapInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setGeographicMapInterface(geographicMapInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)

end; end; end; end; end; end

