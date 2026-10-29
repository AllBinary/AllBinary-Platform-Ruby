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
end

require "org/allbinary/game/displayable/canvas/CanvasUtil"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

class BasicAI
    AI_VISITOR = SmallIntegerSingletonFactory.getInstance().getAt(2)
    ID = SmallIntegerSingletonFactory.getInstance().getAt(1)
end

