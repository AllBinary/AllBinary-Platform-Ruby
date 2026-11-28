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
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class GameInputProcessor
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def processEvent(allbinaryLayerManager, gameKeyEvent)
    end
    

    # throws Exception
    def processReleasedEvent(allbinaryLayerManager, gameKeyEvent)
    end
    

    # throws Exception
    def processAnalog(allbinaryLayerManager, gameKeyEvent, analogValue)
    end
    

    # throws Exception
    def process(allbinaryLayerManager, keyAsInteger)
    end
    

    # throws Exception
    def processReleased(allbinaryLayerManager, keyAsInteger)
    end

    def self.instance()
        GameInputProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameInputProcessor.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameInputProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInputProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

begin
    GameInputProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

