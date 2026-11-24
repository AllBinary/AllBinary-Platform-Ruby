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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

#In general allow scrolling of the menu and selection the center item
class CommandFormInputProcessor < BasicMenuInputProcessor
    attr_accessor :MOTION_GESTURE_SOURCE_ID, :CLICK_DELAY, :clickTimeHelper, :DOUBLE_CLICK_DELAY, :doubleClickTimeHelper, :isSingleKeyProcessing, :form, :hasPressed, :PROCESS_COMMAND, :NAME_LABEL

    def jfields_org_allbinary_game_displayable_canvas_CommandFormInputProcessor
        @MOTION_GESTURE_SOURCE_ID = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID
        @CLICK_DELAY = 150
        @clickTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(@CLICK_DELAY)
        @DOUBLE_CLICK_DELAY = 1200
        @doubleClickTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(@DOUBLE_CLICK_DELAY)
        @isSingleKeyProcessing = ::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().isSingleKeyProcessing()
        @form = nil unless instance_variable_defined?(:@form)
        @hasPressed = false
        @PROCESS_COMMAND = "processCommand"
        @NAME_LABEL = " ScrollSelectionForm: "
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, form)
        super(gameKeyEventList, playerInputId, gameCanvas)
        jfields_org_allbinary_game_displayable_canvas_CommandFormInputProcessor
        @form = form
    end
    

    # throws Exception
    def processInput(key)
        if key == ::Javax::Microedition::Lcdui::Canvas::LEFT || key == ::Javax::Microedition::Lcdui::Canvas::RIGHT || key == ::Javax::Microedition::Lcdui::Canvas::UP || key == ::Javax::Microedition::Lcdui::Canvas::DOWN
            ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
            @form.processInputKey(key)
            return 1
        elsif key == ::Javax::Microedition::Lcdui::Canvas::FIRE
            ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
            return self.processCommand()
        end
        return 0
    end
    java_overload :processInput, 1
    

    def processCommand()
        commandCurrentSelectionForm = @form
        command = commandCurrentSelectionForm.getSelectedCommand()
        @logUtil.putF(command.to_s, self, @PROCESS_COMMAND)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        if ::Org::Allbinary::Game::Layer::SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command != ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().EXIT_COMMAND
            CommandRunnable.new(self, command).run()
        else
            ::Org::Allbinary::ThreadPackage::PrimaryThreadPool.getInstance().runTask(CommandRunnable.new(self, command))
        end
        if command == ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().QUIT_COMMAND
            return -1
        else
            return 1
        end
    end
    java_overload :processCommand, 0
    

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
    java_overload :processInputList, 0
    

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
    java_overload :processMotionInputs, 0
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        touchMotionGestureFactory = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
        motionGestureInput = motionGestureEvent.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.RELEASED
            point = motionGestureEvent.getCurrentPoint()
            if @form.isInForm(point)
                index = @form.getSelectedIndexForPoint(point)
                if index != -1
                    ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
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
    java_overload :processMotionInput, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append(@NAME_LABEL).append(@form.to_s).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :CommandCurrentSelectionForm, "org/allbinary/graphics/form/CommandCurrentSelectionForm" unless const_defined?(:CommandCurrentSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PrimaryPlayerQueueFactory, "org/allbinary/media/audio/PrimaryPlayerQueueFactory" unless const_defined?(:PrimaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool" unless const_defined?(:PrimaryThreadPool, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :CommandRunnable, "org/allbinary/game/displayable/canvas/CommandRunnable" unless const_defined?(:CommandRunnable, false)

end; end; end; end; end

