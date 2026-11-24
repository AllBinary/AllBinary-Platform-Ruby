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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/part/PartInterface"

module ::Org; module Allbinary; module Game; module Part

class CountedLayerInterfaceFactoryPart
    include PartInterface
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :updateMyFontProcessor, :myFontProcessor, :animationInterface, :total, :totalString, :xOffset, :countedPickedUpLayerInterfaceFactory, :primitiveLongUtil

    def jfields_org_allbinary_game_part_CountedLayerInterfaceFactoryPart
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @total = 0 unless instance_variable_defined?(:@total)
        @totalString = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_CHAR_ARRAY
        @xOffset = 0 unless instance_variable_defined?(:@xOffset)
        @countedPickedUpLayerInterfaceFactory = ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
    end
    

    def initialize(total, countedPickedUpLayerInterfaceFactory)
        jfields_org_allbinary_game_part_CountedLayerInterfaceFactoryPart
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(1000)
        self.init(total, countedPickedUpLayerInterfaceFactory)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        self.setXOffset(font.charsWidth(@totalString, 0, @primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1))
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def init(total, countedPickedUpLayerInterfaceFactory)
        self.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        @total = total
    end
    java_overload :init, 2
    

    # throws Exception
    def getInstance(hashtable, x, y, z)
        if @total > 0
            self.setTotal(@total - 1)
            return self.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z)
        else
            raise StandardError.new("No more left. Could use a listener to automatically remove")
        end
    end
    java_overload :getInstance, 4
    

    def getTotal()
        return @total
    end
    java_overload :getTotal, 0
    

    def setTotal(total)
        @total = total
        @totalString = @primitiveLongUtil.getCharArray(total)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :setTotal, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    java_overload :setAnimationInterface, 1
    

    def getXOffset()
        return @xOffset
    end
    java_overload :getXOffset, 0
    

    def setXOffset(totalStringWidth)
        @xOffset = totalStringWidth
    end
    java_overload :setXOffset, 1
    

    def getTotalString()
        return @totalString
    end
    java_overload :getTotalString, 0
    

    def getCountedPickedUpLayerInterfaceFactory()
        return @countedPickedUpLayerInterfaceFactory
    end
    java_overload :getCountedPickedUpLayerInterfaceFactory, 0
    

    def setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        @countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    end
    java_overload :setCountedPickedUpLayerInterfaceFactory, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COUNTED_LAYER_INTERFACE_FACTORY, CountedLayerInterfaceFactoryPart.new(0, ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY))
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

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    CountedLayerInterfaceFactoryPart.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

