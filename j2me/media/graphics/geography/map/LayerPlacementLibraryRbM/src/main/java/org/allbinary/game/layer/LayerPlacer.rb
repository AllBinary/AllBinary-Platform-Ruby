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


class LayerPlacer
    attr_accessor :enumerationUtil, :layerInterfaceVisitor, :dimension

    def initialize_fields
        @enumerationUtil = EnumerationUtil.getInstance()
        @layerInterfaceVisitor = nil
        @dimension = nil
    end
    

    def initialize(layerInterfaceVisitor, dimension)
        initialize_fields
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
        layerInterfaceFactory = LayerInterfaceFactory.getInstance()
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
        pointFactory = PointFactory.getInstance()
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

autoload :Enumeration, "java/util/Enumeration"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :LayerInterfaceFactory, "org/allbinary/layer/LayerInterfaceFactory"
autoload :LayerInterfaceVisitor, "org/allbinary/layer/LayerInterfaceVisitor"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"
autoload :LayerPlacementInterface, "org/allbinary/game/layer/LayerPlacementInterface"
autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType"
autoload :LayerPlacementTypeFactory, "org/allbinary/game/layer/LayerPlacementTypeFactory"

