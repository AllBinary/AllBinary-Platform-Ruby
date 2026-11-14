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
# package org.allbinary.game.init

require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"

class DefaultGameInitializationListener
    include GameInitializedListenerInterface
    attr_accessor :logUtil, :swtJOGLProcessor, :firstTime

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @swtJOGLProcessor = SWTJOGLProcessor.getInstance()
        @firstTime = true
    end
    

    def initialize()
        initialize_fields
        gameInitializedEventHandler = GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.removeAllListeners()
        gameInitializedEventHandler.addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onGameInitialized(gameInitializedEvent)
        _ON_GAME_INITIALIZED = "onGameInitialized"
        commonStrings = CommonStrings.getInstance()
        begin
            @logUtil.putF(commonStrings.START, self, _ON_GAME_INITIALIZED)
            while !@swtJOGLProcessor.isHolderCreated()
                @logUtil.putF(commonStrings.UPDATE, self, _ON_GAME_INITIALIZED)
                sleep((20) / 1000.0)
            end
            FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel())
            if @firstTime
                @firstTime = false
            else
                @swtJOGLProcessor.onSurfaceChanged()
            end
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, _ON_GAME_INITIALIZED, e)
        end
    end
end

autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent"
autoload :GameInitializedEventHandler, "org/allbinary/game/configuration/event/GameInitializedEventHandler"
autoload :FeatureResourceInitializationUtil, "org/allbinary/game/resource/FeatureResourceInitializationUtil"
autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

