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
# package org.allbinary.game.combat.destroy.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class DestroyedEvent < AllBinaryEventObject
    attr_accessor :allBinaryGameCanvas, :allBinaryLayerInterface

    def initialize_fields
        @allBinaryGameCanvas = NullGameCanvas.getInstance()
        @allBinaryLayerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def initialize(combatGameCanvas)
        super(DestroyedEventHandler.getInstance())
        initialize_fields
        self.setAllBinaryGameCanvas(combatGameCanvas)
    end
    

    def getAllBinaryGameCanvas()
        return @allBinaryGameCanvas
    end
    

    def getLayerInterface()
        return @allBinaryLayerInterface
    end
    

    def setAllBinaryGameCanvas(allBinaryGameCanvas)
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface)
        @allBinaryLayerInterface = allBinaryLayerInterface
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("DestroyedEvent: \n")
        stringBuffer.append("AllBinaryLayerInterface: ")
        stringBuffer.append(@allBinaryLayerInterface.to_s)
        stringBuffer.append("\nAllBinaryGameCanvas: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getAllBinaryGameCanvas()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/NullGameCanvas"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"

