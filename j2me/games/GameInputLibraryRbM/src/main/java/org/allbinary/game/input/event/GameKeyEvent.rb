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
# package org.allbinary.game.input.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Input; module Event

class GameKeyEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :sourceId, :repeated, :key, :gameActionKey, :originalKey

    def jfields_org_allbinary_game_input_event_GameKeyEvent
        @sourceId = nil unless instance_variable_defined?(:@sourceId)
        @repeated = false unless instance_variable_defined?(:@repeated)
        @key = nil unless instance_variable_defined?(:@key)
        @gameActionKey = 0 unless instance_variable_defined?(:@gameActionKey)
        @originalKey = 0 unless instance_variable_defined?(:@originalKey)
    end
    

    def self.createEvent(anyType, sourceId, key)
        return GameKeyEvent.new(anyType, sourceId, 0, 0, key, false)
    end
    

    def initialize(anyType, sourceId, originalKey, gameActionKey, key, repeated)
        super(anyType)
        jfields_org_allbinary_game_input_event_GameKeyEvent
        @sourceId = sourceId
        self.setOriginalKey(originalKey)
        @key = key
        self.setGameActionKey(gameActionKey)
        self.setRepeatEvents(repeated)
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    java_overload :init, 1
    

    def setRepeatEvents(repeated)
        @repeated = repeated
    end
    java_overload :setRepeatEvents, 1
    

    def hasRepeatEvents()
        return @repeated
    end
    java_overload :hasRepeatEvents, 0
    

    def getKey()
        return @key
    end
    java_overload :getKey, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("\nKey: ")
        stringBuffer.appendint(self.getKey())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getOriginalKey()
        return @originalKey
    end
    java_overload :getOriginalKey, 0
    

    def setOriginalKey(originalKey)
        @originalKey = originalKey
    end
    java_overload :setOriginalKey, 1
    

    def getGameActionKey()
        return @gameActionKey
    end
    java_overload :getGameActionKey, 0
    

    def setGameActionKey(gameActionKey)
        @gameActionKey = gameActionKey
    end
    java_overload :setGameActionKey, 1
    

    def getSourceId()
        return @sourceId
    end
    java_overload :getSourceId, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NONE, GameKeyEvent.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyEvent"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NONE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    GameKeyEvent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

