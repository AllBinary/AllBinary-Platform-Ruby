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

class LayerPlacer
    attr_accessor :enumerationUtil, :layerInterfaceVisitor, :dimension

    def jfields_org_allbinary_game_layer_LayerPlacer
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
        @layerInterfaceVisitor = nil unless instance_variable_defined?(:@layerInterfaceVisitor)
        @dimension = nil unless instance_variable_defined?(:@dimension)
    end
    

    def initialize(layerInterfaceVisitor, dimension)
        jfields_org_allbinary_game_layer_LayerPlacer
        @layerInterfaceVisitor = layerInterfaceVisitor
        @dimension = dimension
    end
    

    # throws Exception
    def processList(list)
        size = list.size()
        layerPlacementInterface = nil
        (0...size).each do |index|
            layerPlacementInterface = list.objectArray[index]
            self.process(layerPlacementInterface)
        end
    end
    

    # throws Exception
    def process(layerPlacementInterface)
        relativePoint = self.getPoint(layerPlacementInterface)
        layerInterfaceFactory = ::Org::Allbinary::Layer::LayerInterfaceFactory.getInstance()
        hashtable = layerPlacementInterface.getInstance()
        enumeration = hashtable.keys()
        point = nil
        layerHashtable = nil
        x = 0
        y = 0
        z = 0
        layerInterface = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            point = @enumerationUtil.nextElement(enumeration)
            layerHashtable = hashtable.get(point)
            x = point.getX() + relativePoint.getX()
            y = point.getY() + relativePoint.getY()
            z = point.getZ() + relativePoint.getZ()
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z)
            @layerInterfaceVisitor.visit(layerInterface)
        end
    end
    

    # throws Exception
    def getPoint(layerPlacementInterface)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        layerPlacementType = layerPlacementInterface.getLayerType()
        if layerPlacementType == LayerPlacementTypeFactory.getInstance().MAP
            width = layerPlacementInterface.getWidth()
            height = layerPlacementInterface.getHeight()
            x = ((@dimension.getX() - width) / 2)
            y = ((@dimension.getY() - height) / 2)
            return pointFactory.createXY(x, y)
        elsif layerPlacementType == LayerPlacementTypeFactory.getInstance().UP
            width = layerPlacementInterface.getWidth()
            height = layerPlacementInterface.getHeight()
            x = ((@dimension.getX() - width) / 2)
            y = -height
            return pointFactory.createXY(x, y)
        else
            raise StandardError.new("PlacementType Not Recognized")
        end
    end
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactory, "org/allbinary/layer/LayerInterfaceFactory" unless const_defined?(:LayerInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceVisitor, "org/allbinary/layer/LayerInterfaceVisitor" unless const_defined?(:LayerInterfaceVisitor, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end
autoload :LayerPlacementInterface, "org/allbinary/game/layer/LayerPlacementInterface" unless const_defined?(:LayerPlacementInterface, false)
autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType" unless const_defined?(:LayerPlacementType, false)
autoload :LayerPlacementTypeFactory, "org/allbinary/game/layer/LayerPlacementTypeFactory" unless const_defined?(:LayerPlacementTypeFactory, false)

end; end; end; end

