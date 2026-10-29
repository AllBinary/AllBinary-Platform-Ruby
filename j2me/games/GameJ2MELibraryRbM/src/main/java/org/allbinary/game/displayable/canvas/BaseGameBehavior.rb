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

require "org/allbinary/game/displayable/canvas/DemoGameBehavior"

class BaseGameBehavior < DemoGameBehavior
    

    def self.getInstance()
        return BaseGameBehavior.instanceC
    end
    

    # throws Exception
    def init()
        gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        gameAdState.playingAdState()
    end
    

    def pause(allBinaryGameCanvas)
        features = Features.getInstance()
        if features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable)
        end
    end
    

    def unPause(allBinaryGameCanvas)
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable)
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas)
        end
    end
    

    # throws Exception
    def updateTouch(allBinaryGameCanvas)
        allBinaryGameCanvas.updateTouch2()
    end
    

    # throws Exception
    def updateScreenButtonPaintable(allBinaryGameCanvas)
        allBinaryGameCanvas.updateScreenButtonPaintable2()
    end
    

    # throws Exception
    def setGameState(allBinaryGameCanvas)
        allBinaryGameCanvas.updateGameState()
    end
    

    def removeAllGameKeyInputListeners(allBinaryGameCanvas)
        allBinaryGameCanvas.removeAllGameKeyInputListeners2()
    end
    

    # throws Exception
    def updateEndGameProcessor(allBinaryGameCanvas)
        allBinaryGameCanvas.updateEndGameProcessor2()
    end
    

    # throws Exception
    def buildGame(allBinaryGameCanvas)
        allBinaryGameCanvas.buildGame2()
    end
    

    # throws Exception
    def run(allBinaryGameCanvas)
        allBinaryGameCanvas.run2()
    end
    

    # throws Exception
    def setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/business/advertisement/GameAdStateFactory"
require "org/allbinary/game/GameAdState"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/CurrentDisplayableFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class BaseGameBehavior
    @@instanceC = BaseGameBehavior.new()
end

