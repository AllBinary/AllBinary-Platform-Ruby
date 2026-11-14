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
        BaseGameBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        BaseGameBehavior.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = BaseGameBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BaseGameBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory"
autoload :GameAdState, "org/allbinary/game/GameAdState"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :CurrentDisplayableFactory, "org/allbinary/graphics/opengles/CurrentDisplayableFactory"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

begin
    BaseGameBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

