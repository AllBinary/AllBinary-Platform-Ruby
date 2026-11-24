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
# package org.allbinary.media.graphics.geography.pathfinding

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingNode
    attr_accessor :parent, :geographicMapCellPosition

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNode
        @parent = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @geographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    def initialize(parent, geographicMapCellPosition)
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNode
        @parent = parent
        self.setGeographicMapCellPositionP(geographicMapCellPosition)
        if @geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            raise StandardError.new("No GeographicMapCellPosition")
        end
    end
    

    def getParentP()
        return @parent
    end
    

    def setGeographicMapCellPositionP(geographicMapCellPosition)
        @geographicMapCellPosition = geographicMapCellPosition
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP)
        stringBuffer.append(" Path: ")
        stringBuffer.append(@geographicMapCellPosition.to_s)
        pathFindingNode = self.getParentP()
        while pathFindingNode != nil
            stringBuffer.append(pathFindingNode.geographicMapCellPosition.to_s)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            pathFindingNode = pathFindingNode.getParentP()
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

end; end; end; end; end; end

