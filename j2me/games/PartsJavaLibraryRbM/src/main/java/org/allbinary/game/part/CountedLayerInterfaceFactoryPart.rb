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
# package org.allbinary.game.part

require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/part/PartInterface"

class CountedLayerInterfaceFactoryPart
    include PartInterface
    include UpdateMyFontInterface
    attr_accessor :updateMyFontProcessor, :myFontProcessor, :animationInterface, :total, :totalString, :xOffset, :countedPickedUpLayerInterfaceFactory, :primitiveLongUtil

    def initialize_fields
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @total = 0
        @totalString = NullUtil.getInstance().NULL_CHAR_ARRAY
        @xOffset = 0
        @countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
        @primitiveLongUtil = nil
    end
    

    def initialize(total, countedPickedUpLayerInterfaceFactory)
        initialize_fields
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        self.init(total, countedPickedUpLayerInterfaceFactory)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        self.setXOffset(font.charsWidth(@totalString, 0, @primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init(total, countedPickedUpLayerInterfaceFactory)
        self.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        @total = total
    end
    

    # throws Exception
    def getInstance(hashtable, x, y, z)
        if @total > 0
            self.setTotal(@total - 1)
            return self.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z)
        else
            raise StandardError.new("No more left. Could use a listener to automatically remove")
        end
    end
    

    def getTotal()
        return @total
    end
    

    def setTotal(total)
        @total = total
        @totalString = @primitiveLongUtil.getCharArray(total)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
    end
    

    def paintThreed(graphics)
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    

    def getXOffset()
        return @xOffset
    end
    

    def setXOffset(totalStringWidth)
        @xOffset = totalStringWidth
    end
    

    def getTotalString()
        return @totalString
    end
    

    def getCountedPickedUpLayerInterfaceFactory()
        return @countedPickedUpLayerInterfaceFactory
    end
    

    def setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        @countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COUNTED_LAYER_INTERFACE_FACTORY, CountedLayerInterfaceFactoryPart.new(0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CountedLayerInterfaceFactoryPart"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COUNTED_LAYER_INTERFACE_FACTORY].include?(name)
        end
        super
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    CountedLayerInterfaceFactoryPart.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

