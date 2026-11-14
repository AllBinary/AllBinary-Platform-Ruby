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
# package org.allbinary.game.ai

require "org/allbinary/ai/ArtificialIntelligence"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

class BasicAI < ArtificialIntelligence
    include GameKeyEventSourceInterface
    attr_accessor :logUtil, :commonStrings, :gameKeyEventFactory, :ownerLayerInterface, :gameInput, :lastKey

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @ownerLayerInterface = nil
        @gameInput = nil
        @lastKey = -1
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super()
        initialize_fields
        @ownerLayerInterface = ownerLayerInterface
        @gameInput = gameInput
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def processKeyAI(key)
        if key != -1
            @gameInput.add(@gameKeyEventFactory.getInstanceForKey(self, key))
        end
    end
    

    def setLastKey(lastKey)
        @lastKey = lastKey
    end
    

    def getLastKey()
        return @lastKey
    end
    

    def getOwnerLayerInterface()
        return @ownerLayerInterface
    end
    

    def getGameInput()
        return @gameInput
    end
    

    def getName()
        return self.class.name
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(self.getName())
        stringBuffer.append(" LastKey: ")
        stringBuffer.append(CanvasUtil.getKeyName(self.getLastKey()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getSourceId()
        return 1
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:AI_VISITOR, SmallIntegerSingletonFactory.getInstance().getAt(2))
            const_set(:ID, SmallIntegerSingletonFactory.getInstance().getAt(1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:AI_VISITOR, :ID].include?(name)
        end
        super
    end
end

autoload :CanvasUtil, "org/allbinary/game/displayable/canvas/CanvasUtil"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    BasicAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

