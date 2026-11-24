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
# package org.allbinary.game.layer.hud.basic

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Basic

class VelocityWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    attr_accessor :KILOMETERS_PER_HOUR_STR, :totalChars, :velocity, :maxVelocity, :string, :totalDigits, :powerOfTenVelocity, :primitiveLongUtil, :offset, :offset2

    def jfields_org_allbinary_game_layer_hud_basic_VelocityWidget
        @KILOMETERS_PER_HOUR_STR = [" ", "k", "m", "/", "h"]
        @totalChars = @KILOMETERS_PER_HOUR_STR.length
        @velocity = nil unless instance_variable_defined?(:@velocity)
        @maxVelocity = nil unless instance_variable_defined?(:@maxVelocity)
        @string = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @powerOfTenVelocity = nil unless instance_variable_defined?(:@powerOfTenVelocity)
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
        @offset = 0
        @offset2 = 0
    end
    

    def initialize(powerOfTenVelocity, location, direction, basicColor)
        super(location, direction, 2, basicColor)
        jfields_org_allbinary_game_layer_hud_basic_VelocityWidget
        @powerOfTenVelocity = powerOfTenVelocity
        @maxVelocity = powerOfTenVelocity
        @velocity = 0
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(powerOfTenVelocity)
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * (5 + ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance().getTotalDigits(@powerOfTenVelocity) + 1)
        VelocityWidget.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        @offset = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, @primitiveLongUtil.getMaxDigits()) + ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, 2)
        @offset2 = @offset - ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, @totalDigits) - ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, 2)
    end
    java_overload :updateMeasurement, 1
    

    def get()
        return @velocity
    end
    java_overload :get, 0
    

    def add(value)
        self.set(@velocity + value)
    end
    java_overload :add, 1
    

    def set(value)
        lastVelocity = @velocity
        @velocity = value
        if @velocity > @maxVelocity
            @velocity = 0
        end
        if lastVelocity != @velocity
            @string = @primitiveLongUtil.getCharArray(@velocity * 18)
            if ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed()
                @totalDigits = @primitiveLongUtil.getCurrentTotalDigits() + 1
            else
                @totalDigits = @primitiveLongUtil.getCurrentTotalDigits()
            end
            @myFontProcessor = @updateMyFontProcessor
        end
    end
    java_overload :set, 1
    

    def reduce(value)
        self.set(@velocity - value)
    end
    java_overload :reduce, 1
    

    def paint(graphics)
        VelocityWidget.superclass.java_super_method(:paintDXY, 9).bind(self).call(graphics, @string, 0, @totalDigits, @KILOMETERS_PER_HOUR_STR, 0, @totalChars, @offset2, @offset)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongSingleton, "org/allbinary/logic/math/PrimitiveLongSingleton" unless const_defined?(:PrimitiveLongSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end

end; end; end; end; end; end

