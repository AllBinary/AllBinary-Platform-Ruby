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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Command"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

#In general allow scrolling of the menu and selection the center item
class CommandFormInputProcessor < BasicMenuInputProcessor
    attr_accessor :MOTION_GESTURE_SOURCE_ID, :CLICK_DELAY, :clickTimeHelper, :DOUBLE_CLICK_DELAY, :doubleClickTimeHelper, :isSingleKeyProcessing, :form, :hasPressed, :PROCESS_COMMAND, :NAME_LABEL

    def initialize_fields
        @MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID
        @CLICK_DELAY = 150
        @clickTimeHelper = TimeDelayHelper.new(@CLICK_DELAY)
        @DOUBLE_CLICK_DELAY = 1200
        @doubleClickTimeHelper = TimeDelayHelper.new(@DOUBLE_CLICK_DELAY)
        @isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing()
        @form = nil
        @hasPressed = false
        @PROCESS_COMMAND = "processCommand"
        @NAME_LABEL = " ScrollSelectionForm: "
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, form)
        super(gameKeyEventList, playerInputId, gameCanvas)
        initialize_fields
        @form = form
    end
    

    # throws Exception
    def processInput(key)
        if key == Canvas::LEFT || key == Canvas::RIGHT || key == Canvas::UP || key == Canvas::DOWN
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            @form.processInputKey(key)
            return 1
        elsif key == Canvas::FIRE
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            return self.processCommand()
        end
        return 0
    end
    

    def processCommand()
        commandCurrentSelectionForm = @form
        command = commandCurrentSelectionForm.getSelectedCommand()
        @logUtil.putF(command.to_s, self, @PROCESS_COMMAND)
        features = Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command != GameCommandsFactory.getInstance().EXIT_COMMAND
            CommandRunnable.new(self, command).run()
        else
            PrimaryThreadPool.getInstance().runTask(CommandRunnable.new(self, command))
        end
        if command == GameCommandsFactory.getInstance().QUIT_COMMAND
            return -1
        else
            return 1
        end
    end
    

    # throws Exception
    def processInputList()
        begin
            motionInputsIndex = self.processMotionInputs()
            list = self.getGameKeyEventList()
            size = list.size()
            key = 0
            gameKeyEvent = nil
            (0...size).each do |index|
                gameKeyEvent = list.objectArray[index]
                key = gameKeyEvent.getKey()
                if gameKeyEvent.getSourceId() != @MOTION_GESTURE_SOURCE_ID
                    if self.processInput(key) == 1
                        break
                    end
                end
            end
            self.clear()
            if size > 0 || motionInputsIndex >= 0
                return 1
            else
                return -1
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.PROCESS_INPUT, e)
            return -1
        end
    end
    

    # throws Exception
    def processMotionInputs()
        lastIndex = @motionGestureEventList.size() - 1
        if lastIndex >= 0
            motionGestureEvent = @motionGestureEventList.objectArray[lastIndex]
            self.processMotionInput(motionGestureEvent)
        end
        @motionGestureEventList.clear()
        return lastIndex
    end
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        motionGestureInput = motionGestureEvent.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.RELEASED
            point = motionGestureEvent.getCurrentPoint()
            if @form.isInForm(point)
                index = @form.getSelectedIndexForPoint(point)
                if index != -1
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                    if index == @form.getSelectedIndex()
                        if @clickTimeHelper.isTimeTNT()
                            self.processCommand()
                        end
                    else
                        @form.setSelectedIndex(index)
                    end
                else
                end
            end
            if @hasPressed
                if !@doubleClickTimeHelper.isTimeTNT()
                    @logUtil.putF("Double Press", self, @gameInputStrings.PROCESS_MOTION_INPUT)
                    self.processCommand()
                end
                @doubleClickTimeHelper.delay = @DOUBLE_CLICK_DELAY
                @doubleClickTimeHelper.setStartTimeTNT()
            end
            @hasPressed = false
        elsif motionGestureInput == touchMotionGestureFactory.PRESSED
            @doubleClickTimeHelper.delay = 0
            @hasPressed = true
        end
    end
    

    def toString()
        return StringMaker.new().append(super.to_s).append(@NAME_LABEL).append(@form.to_s).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/layer/SWTUtil"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/graphics/form/CommandCurrentSelectionForm"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/thread/PrimaryThreadPool"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/displayable/canvas/CommandRunnable"

