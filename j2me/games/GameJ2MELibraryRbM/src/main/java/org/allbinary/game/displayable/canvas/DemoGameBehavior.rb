# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


class DemoGameBehavior
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return DemoGameBehavior.instance
    end
    

    # throws Exception
    def init()
    end
    

    def pause(allBinaryGameCanvas)
    end
    

    def unPause(allBinaryGameCanvas)
    end
    

    # throws Exception
    def updateTouch(allBinaryGameCanvas)
    end
    

    # throws Exception
    def updateScreenButtonPaintable(allBinaryGameCanvas)
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance())
    end
    

    # throws Exception
    def setGameState(allBinaryGameCanvas)
    end
    

    def removeAllGameKeyInputListeners(allBinaryGameCanvas)
    end
    

    # throws Exception
    def updateEndGameProcessor(allBinaryGameCanvas)
    end
    

    # throws Exception
    def buildGame(allBinaryGameCanvas)
    end
    

    # throws Exception
    def run(allBinaryGameCanvas)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(GameTypeFactory.getInstance().BOT.to_s, self, commonStrings.RUN)
    end
    

    # throws Exception
    def setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class DemoGameBehavior
    @@instance = DemoGameBehavior.new()
end

