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
# package org.allbinary.game.layer.hud.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event

class GameNotificationEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :string, :seconds, :basicColor, :removeable

    def jfields_org_allbinary_game_layer_hud_event_GameNotificationEvent
        @string = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @seconds = nil unless instance_variable_defined?(:@seconds)
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK
        @removeable = nil unless instance_variable_defined?(:@removeable)
    end
    

    def initialize(anyType, string, seconds, basicColor, permanent)
        super(anyType)
        jfields_org_allbinary_game_layer_hud_event_GameNotificationEvent
        self.setString(string)
        @seconds = seconds
        self.setBasicColorP(basicColor)
        @removeable = permanent
    end
    

    def getString()
        return @string
    end
    java_overload :getString, 0
    

    def getSeconds()
        return @seconds
    end
    java_overload :getSeconds, 0
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def getPermanent()
        return @removeable
    end
    java_overload :getPermanent, 0
    

    def setString(string)
        @string = string
    end
    java_overload :setString, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end

