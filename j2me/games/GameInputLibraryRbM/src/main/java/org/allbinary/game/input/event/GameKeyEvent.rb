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
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"

class GameKeyEvent
    NONE = GameKeyEvent.new(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false)
end

