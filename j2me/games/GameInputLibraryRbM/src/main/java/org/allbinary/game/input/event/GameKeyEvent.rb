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

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class GameKeyEvent < AllBinaryEventObject
    attr_accessor :sourceId, :repeated, :key, :gameActionKey, :originalKey

    def initialize_fields
        @sourceId = nil
        @repeated = false
        @key = nil
        @gameActionKey = 0
        @originalKey = 0
    end
    

    def self.createEvent(anyType, sourceId, key)
        return GameKeyEvent.new(anyType, sourceId, 0, 0, key, false)
    end
    

    def initialize(anyType, sourceId, originalKey, gameActionKey, key, repeated)
        super(anyType)
        initialize_fields
        @sourceId = sourceId
        self.setOriginalKey(originalKey)
        @key = key
        self.setGameActionKey(gameActionKey)
        self.setRepeatEvents(repeated)
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    

    def setRepeatEvents(repeated)
        @repeated = repeated
    end
    

    def hasRepeatEvents()
        return @repeated
    end
    

    def getKey()
        return @key
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("\nKey: ")
        stringBuffer.appendint(self.getKey())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getOriginalKey()
        return @originalKey
    end
    

    def setOriginalKey(originalKey)
        @originalKey = originalKey
    end
    

    def getGameActionKey()
        return @gameActionKey
    end
    

    def setGameActionKey(gameActionKey)
        @gameActionKey = gameActionKey
    end
    

    def getSourceId()
        return @sourceId
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NONE, GameKeyEvent.new(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false))
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

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    GameKeyEvent.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

