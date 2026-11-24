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
# package org.allbinary.game.displayable.canvas

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class NoMenuInputProcessor < BasicMenuInputProcessor
    

    def self.getInstance()
        return NoMenuInputProcessor::SINGLETON
    end
    

    def initialize()
        super(::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance(), -1, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    java_overload :onDownGameKeyEvent, 1
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    java_overload :onUpGameKeyEvent, 1
    

    def onMotionGestureEvent(motionGestureEvent)
    end
    java_overload :onMotionGestureEvent, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NoMenuInputProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoMenuInputProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

begin
    NoMenuInputProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

