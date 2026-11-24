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
# package org.allbinary.media.graphics.geography.map.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event

class GeographicMapCellPositionEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :geographicMapCellPosition

    def jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEvent
        @geographicMapCellPosition = ::Org::Allbinary::Graphics::CellPositionFactory.getInstance().NONE
    end
    

    def initialize(anyType, geographicMapCellPosition)
        super(anyType)
        jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEvent
        @geographicMapCellPosition = geographicMapCellPosition
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    java_overload :init, 1
    

    def setGeographicMapCellPosition(geographicMapCellPosition)
        @geographicMapCellPosition = geographicMapCellPosition
    end
    java_overload :setGeographicMapCellPosition, 1
    

    def getGeographicMapCellPosition()
        return @geographicMapCellPosition
    end
    java_overload :getGeographicMapCellPosition, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("CellPositionEvent: ")
        stringBuffer.append("\nGeographicMapCellPosition: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getGeographicMapCellPosition()))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory" unless const_defined?(:CellPositionFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end

end; end; end; end; end; end; end

