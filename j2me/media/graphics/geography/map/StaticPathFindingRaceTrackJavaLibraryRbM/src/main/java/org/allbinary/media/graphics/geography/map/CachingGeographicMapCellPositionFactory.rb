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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class CachingGeographicMapCellPositionFactory < BasicGeographicMapCellPositionFactory
    

    def initialize(geographicMapInterface)
        super(geographicMapInterface)
    end
    

    # throws Exception
    def createInstance(i_column, i_row, width, height)
        hashtable = GeographicMapCellPositionFactory.getHashtable()
        cellPositionKey = ::Org::Allbinary::Graphics::CellPosition.toStringColRow(i_column, i_row)
        cellPositionCanBeNull = hashtable.get(cellPositionKey)
        if cellPositionCanBeNull == nil
            cellPositionCanBeNull = @geographicMapCellPositionFactoryInterface.getInstance(@geographicMapInterface, i_column, i_row, self.getColumns(), self.getRows(), width, height)
            @geographicMapCellPositionArray[i_row][i_column] = cellPositionCanBeNull
            hashtable.put(cellPositionKey, cellPositionCanBeNull)
        end
        return cellPositionCanBeNull
    end
    java_overload :createInstance, 4
end

module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactory" unless const_defined?(:GeographicMapCellPositionFactory, false)

end; end; end; end; end; end

