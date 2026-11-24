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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayer"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class IconLayer < ::Org::Allbinary::Layer::AllBinaryLayer
    attr_accessor :animationInterface

    def jfields_org_allbinary_game_layer_pickup_IconLayer
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(animationInterface, width, height)
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, width, height), ::Org::Allbinary::View::ViewPosition.getInstanceD())
        jfields_org_allbinary_game_layer_pickup_IconLayer
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @x, @y)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, @x, @y, @z)
    end
    java_overload :paintThreed, 1
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ICON_LAYER, IconLayer.new(::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "IconLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ICON_LAYER].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end

begin
    IconLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

