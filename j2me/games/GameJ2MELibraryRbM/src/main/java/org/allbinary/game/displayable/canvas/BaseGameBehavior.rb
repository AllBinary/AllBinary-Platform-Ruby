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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/DemoGameBehavior"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class BaseGameBehavior < DemoGameBehavior
    

    def self.getInstance()
        return BaseGameBehavior.instanceC
    end
    

    # throws Exception
    def init()
        gameAdState = ::Org::Allbinary::Business::Advertisement::GameAdStateFactory.getInstance().getCurrentInstance()
        gameAdState.playingAdState()
    end
    java_overload :init, 0
    

    def pause(allBinaryGameCanvas)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory = ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable)
        end
    end
    java_overload :pause, 1
    

    def unPause(allBinaryGameCanvas)
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory = ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable)
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas)
        end
    end
    java_overload :unPause, 1
    

    # throws Exception
    def updateTouch(allBinaryGameCanvas)
        allBinaryGameCanvas.updateTouch2()
    end
    java_overload :updateTouch, 1
    

    # throws Exception
    def updateScreenButtonPaintable(allBinaryGameCanvas)
        allBinaryGameCanvas.updateScreenButtonPaintable2()
    end
    java_overload :updateScreenButtonPaintable, 1
    

    # throws Exception
    def setGameState(allBinaryGameCanvas)
        allBinaryGameCanvas.updateGameState()
    end
    java_overload :setGameState, 1
    

    def removeAllGameKeyInputListeners(allBinaryGameCanvas)
        allBinaryGameCanvas.removeAllGameKeyInputListeners2()
    end
    java_overload :removeAllGameKeyInputListeners, 1
    

    # throws Exception
    def updateEndGameProcessor(allBinaryGameCanvas)
        allBinaryGameCanvas.updateEndGameProcessor2()
    end
    java_overload :updateEndGameProcessor, 1
    

    # throws Exception
    def buildGame(allBinaryGameCanvas)
        allBinaryGameCanvas.buildGame2()
    end
    java_overload :buildGame, 1
    

    # throws Exception
    def run(allBinaryGameCanvas)
        allBinaryGameCanvas.run2()
    end
    java_overload :run, 1
    

    # throws Exception
    def setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
    end
    java_overload :setHighScore, 6

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

module ::Org; module Allbinary; module Business; module Advertisement; autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :CurrentDisplayableFactory, "org/allbinary/graphics/opengles/CurrentDisplayableFactory" unless const_defined?(:CurrentDisplayableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

begin
    BaseGameBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

