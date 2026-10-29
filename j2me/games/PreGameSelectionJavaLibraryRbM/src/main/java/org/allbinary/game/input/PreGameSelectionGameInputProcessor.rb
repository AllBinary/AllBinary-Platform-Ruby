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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/canvas/Processor"
require "org/allbinary/game/input/GameInputProcessorInterface"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

class PreGameSelectionGameInputProcessor < Processor
    include GameInputProcessorInterface
    include PlayerGameInputCompositeInterface
    attr_accessor :logUtil, :gameCanvas, :preGameSelectorPaintable, :inputTimeHelper, :nextGameState, :playerGameInput, :lockedIndex, :abRunnable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameCanvas = nil
        @preGameSelectorPaintable = nil
        @inputTimeHelper = TimeDelayHelper.new(650)
        @nextGameState = nil
        @playerGameInput = nil
        @lockedIndex = nil
        @abRunnable = Class.new(ABRunnable.is_a?(Class) ? ABRunnable : Object) do
        include(ABRunnable) unless ABRunnable.is_a?(Class)
        

        def run()
            begin
                self.setRunning(true)
                SecondaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                @gameCanvas.setGameState(@nextGameState)
                GameKeyEventHandler.getInstance().removeListener(getPlayerGameInput())
                self.setRunning(false)
            rescue StandardError => e
                self.setRunning(false)
                logUtil = LogUtil.getInstance()
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end.new()
    end
    

    def initialize(gameCanvas, preGameSelectorPaintable, nextGameState, lockedIndex)
        super()
        initialize_fields
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
    

    # throws Exception
    def onInput(list)
        size = list.size()
        (0...size).each do |index|
            anyType = list.get(index)
            key = GameKeyEventUtil.getKey(anyType)
            if key == Canvas::LEFT || key == Canvas::RIGHT || key == Canvas::UP || key == Canvas::DOWN
                if @inputTimeHelper.isTimeTNT()
                    SecondaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                    self.getPreGameSelectorPaintable().getPreGameSelectionForm().processInputKey(key)
                    break
                end
            elsif key == Canvas::KEY_NUM0
                selectedIndex = @preGameSelectorPaintable.getPreGameSelectionForm().getSelectedIndex()
                if selectedIndex < @lockedIndex || !LockedUtil.getInstance().isLocked()
                    if !@abRunnable.isRunning()
                        @abRunnable.setRunning(true)
                        ThreadObjectUtil.getInstance().processThread(@abRunnable)
                    end
                    break
                else
                    LockedFeatureNotificationUtil.getInstance().fire()
                end
            end
        end
        list.clear()
    end
    

    def getPreGameSelectorPaintable()
        return @preGameSelectorPaintable
    end
    

    # throws Exception
    def processInput(layerManager)
    end
    

    def initInputProcessors()
    end
    

    def getName()
        return self.to_s
    end
    

    def getPlayerGameInput()
        return @playerGameInput
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil"
require "org/allbinary/logic/system/security/licensing/LockedUtil"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/PreGameSelectorPaintable"
require "org/allbinary/game/input/event/GameKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEventUtil"
require "org/allbinary/game/state/GameState"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/thread/ABRunnable"
require "org/allbinary/thread/ThreadObjectUtil"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/game/input/GameInputProcessorComposite"
require "org/allbinary/game/input/PlayerGameInput"

