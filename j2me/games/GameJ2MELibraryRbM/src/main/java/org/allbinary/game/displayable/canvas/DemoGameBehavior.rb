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


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class DemoGameBehavior
    attr_accessor :logUtil

    def jfields_org_allbinary_game_displayable_canvas_DemoGameBehavior
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_displayable_canvas_DemoGameBehavior
    end
    

    def self.getInstance()
        return @@instance
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
        allBinaryGameCanvas.setTouchPaintableP(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
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
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(::Org::Allbinary::Game::GameTypeFactory.getInstance().BOT.to_s, self, commonStrings.RUN)
    end
    

    # throws Exception
    def setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
    end

    def self.instance()
        DemoGameBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DemoGameBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DemoGameBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DemoGameBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

begin
    DemoGameBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

