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
# package org.allbinary.game.ag.ai.scroller

require "org/allbinary/game/ai/BasicAI"

class TimedFireAI < BasicAI
    attr_accessor :maxFireDelayTimeHelper, :delay

    def initialize_fields
        @maxFireDelayTimeHelper = TimeDelayHelper.new(0)
        @delay = nil
    end
    

    def initialize(delay, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @delay = delay
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        timeFiredInterface = self.getOwnerLayerInterface()
        if @maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() + @maxFireDelayTimeHelper.delay < @maxFireDelayTimeHelper.getStartTime()
            TimedFireAI.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
            @maxFireDelayTimeHelper.delay = @delay
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:TIME, SmallIntegerSingletonFactory.getInstance().getAt(1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TimedFireAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TIME].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :TimeFiredInterface, "org/allbinary/game/ag/ai/scroller/TimeFiredInterface"

begin
    TimedFireAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

