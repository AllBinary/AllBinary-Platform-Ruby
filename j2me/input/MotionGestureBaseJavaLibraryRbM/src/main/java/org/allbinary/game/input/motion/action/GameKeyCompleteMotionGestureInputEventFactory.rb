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
# package org.allbinary.game.input.motion.action


module ::Org; module Allbinary; module Game; module Input; module Motion; module Action

class GameKeyCompleteMotionGestureInputEventFactory
    attr_accessor :logUtil, :eventList

    def jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEventFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @eventList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEventFactory
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def add(gameKeyCompleteMotionGestureInputEvent)
        @eventList.add(gameKeyCompleteMotionGestureInputEvent)
    end
    

    def updateAll()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).appendint(@eventList.size()).to_s, self, "updateAll")
        (@eventList.size() - 1).step(0, -(1)) do |index|
            gameKeyCompleteMotionGestureInputEvent = @eventList.objectArray[index]
            gameKeyCompleteMotionGestureInputEvent.update()
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, GameKeyCompleteMotionGestureInputEventFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyCompleteMotionGestureInputEventFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" unless const_defined?(:GameKeyCompleteMotionGestureInputEvent, false)

begin
    GameKeyCompleteMotionGestureInputEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

