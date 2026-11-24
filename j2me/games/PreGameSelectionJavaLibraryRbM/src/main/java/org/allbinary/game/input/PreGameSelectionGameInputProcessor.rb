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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"
require "org/allbinary/thread/ABRunnable"
require "org/allbinary/game/input/GameInputProcessorInterface"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

module ::Org; module Allbinary; module Game; module Input

class PreGameSelectionGameInputProcessor < ::Org::Allbinary::Canvas::Processor
    include GameInputProcessorInterface
    include PlayerGameInputCompositeInterface
    attr_accessor :logUtil, :gameCanvas, :preGameSelectorPaintable, :inputTimeHelper, :nextGameState, :playerGameInput, :lockedIndex, :abRunnable
    class PreGameSelectionRunnable < ::Org::Allbinary::ThreadPackage::ABRunnable
        attr_accessor :inputProcessor

        def jfields_org_allbinary_game_input_PreGameSelectionGameInputProcessor_PreGameSelectionRunnable
            @inputProcessor = nil unless instance_variable_defined?(:@inputProcessor)
        end
        

        def initialize(inputProcessor)
            super()
            jfields_org_allbinary_game_input_PreGameSelectionGameInputProcessor_PreGameSelectionRunnable
            @inputProcessor = inputProcessor
        end
        

        def run()
            begin
                self.setRunning(true)
                ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
                @inputProcessor.gameCanvas.setGameState(@inputProcessor.nextGameState)
                ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().removeListener(@inputProcessor.getPlayerGameInput())
                self.setRunning(false)
            rescue StandardError => e
                self.setRunning(false)
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_game_input_PreGameSelectionGameInputProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @preGameSelectorPaintable = nil unless instance_variable_defined?(:@preGameSelectorPaintable)
        @inputTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(650)
        @nextGameState = nil unless instance_variable_defined?(:@nextGameState)
        @playerGameInput = nil unless instance_variable_defined?(:@playerGameInput)
        @lockedIndex = nil unless instance_variable_defined?(:@lockedIndex)
        @abRunnable = PreGameSelectionRunnable.new(self)
    end
    

    def initialize(gameCanvas, preGameSelectorPaintable, nextGameState, lockedIndex)
        super()
        jfields_org_allbinary_game_input_PreGameSelectionGameInputProcessor
        @gameCanvas = gameCanvas
        @preGameSelectorPaintable = preGameSelectorPaintable
        @nextGameState = nextGameState
        @playerGameInput = GameInputProcessorComposite.new("Pre Game Selection", self)
        @lockedIndex = lockedIndex
    end
    

    # throws Exception
    def process()
        self.getPlayerGameInput().update()
    end
    java_overload :process, 0
    

    # throws Exception
    def onInput(list)
        size = list.size()
        (0...size).each do |index|
            anyType = list.get(index)
            key = ::Org::Allbinary::Game::Input::Event::GameKeyEventUtil.getKey(anyType)
            if key == ::Javax::Microedition::Lcdui::Canvas::LEFT || key == ::Javax::Microedition::Lcdui::Canvas::RIGHT || key == ::Javax::Microedition::Lcdui::Canvas::UP || key == ::Javax::Microedition::Lcdui::Canvas::DOWN
                if @inputTimeHelper.isTimeTNT()
                    ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
                    self.getPreGameSelectorPaintable().getPreGameSelectionForm().processInputKey(key)
                    break
                end
            elsif key == ::Javax::Microedition::Lcdui::Canvas::KEY_NUM0
                selectedIndex = @preGameSelectorPaintable.getPreGameSelectionForm().getSelectedIndex()
                if selectedIndex < @lockedIndex || !::Org::Allbinary::Logic::System::Security::Licensing::LockedUtil.getInstance().isLocked()
                    if !@abRunnable.isRunning()
                        @abRunnable.setRunning(true)
                        ::Org::Allbinary::ThreadPackage::ThreadObjectUtil.getInstance().processThread(@abRunnable)
                    end
                    break
                else
                    ::Org::Allbinary::Logic::System::Security::Licensing::LockedFeatureNotificationUtil.getInstance().fire()
                end
            end
        end
        list.clear()
    end
    java_overload :onInput, 1
    

    def getPreGameSelectorPaintable()
        return @preGameSelectorPaintable
    end
    java_overload :getPreGameSelectorPaintable, 0
    

    # throws Exception
    def processInput(layerManager)
    end
    java_overload :processInput, 1
    

    def initInputProcessors()
    end
    java_overload :initInputProcessors, 0
    

    def getName()
        return self.to_s
    end
    java_overload :getName, 0
    

    def getPlayerGameInput()
        return @playerGameInput
    end
    java_overload :getPlayerGameInput, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedFeatureNotificationUtil, "org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil" unless const_defined?(:LockedFeatureNotificationUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedUtil, "org/allbinary/logic/system/security/licensing/LockedUtil" unless const_defined?(:LockedUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :PreGameSelectorPaintable, "org/allbinary/game/displayable/canvas/PreGameSelectorPaintable" unless const_defined?(:PreGameSelectorPaintable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventUtil, "org/allbinary/game/input/event/GameKeyEventUtil" unless const_defined?(:GameKeyEventUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil" unless const_defined?(:ThreadObjectUtil, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :GameInputProcessorComposite, "org/allbinary/game/input/GameInputProcessorComposite" unless const_defined?(:GameInputProcessorComposite, false)
autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false)

end; end; end; end

