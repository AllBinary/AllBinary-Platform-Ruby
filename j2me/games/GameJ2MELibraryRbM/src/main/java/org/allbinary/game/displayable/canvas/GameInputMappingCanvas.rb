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
require "org/allbinary/game/input/mapping/InputMappingInterface"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameInputMappingCanvas < GameCommandCanvas
    include ::Org::Allbinary::Game::Input::Mapping::InputMappingInterface
    attr_accessor :paintable, :helpPaintable, :colorFillPaintable, :inputMapping, :NONE, :abeClientInformation, :selectedGameKey, :selectedInput, :inputFactory

    def jfields_org_allbinary_game_displayable_canvas_GameInputMappingCanvas
        @paintable = nil unless instance_variable_defined?(:@paintable)
        @helpPaintable = nil unless instance_variable_defined?(:@helpPaintable)
        @colorFillPaintable = nil unless instance_variable_defined?(:@colorFillPaintable)
        @inputMapping = nil unless instance_variable_defined?(:@inputMapping)
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @selectedGameKey = @NONE
        @selectedInput = @NONE
        @inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
    end
    

    def initialize(abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)
        super(commandListener, GameInputMappingCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        jfields_org_allbinary_game_displayable_canvas_GameInputMappingCanvas
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        if helpPaintable == nil
            raise StandardError.new("Help Paintable Exception")
        end
        @abeClientInformation = abeClientInformation
        @helpPaintable = helpPaintable
        @inputMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        @paintable = ::Org::Allbinary::Graphics::Paint::ProcessPaintable.new()
        @colorFillPaintable = ::Org::Allbinary::Game::Paint::ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    # throws Exception
    def close()
        GameInputMappingCanvas.superclass.java_super_method(:close, 0).bind(self).call()
        @paintable.process()
        @selectedGameKey = @NONE
        @selectedInput = @NONE
        self.update()
    end
    java_overload :close, 0
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(GameInputMappingCanvas::DEFAULT)
        self.addCommand(GameInputMappingInstructionsCanvas::DISPLAY)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    java_overload :keyReleased, 1
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    java_overload :keyRepeated, 1
    

    def keyPressedByDevice(keyCode, deviceId)
        self.addGameKey(keyCode, false)
        GameInputMappingCanvas.superclass.java_super_method(:keyPressedByDevice, 2).bind(self).call(keyCode, 0)
    end
    java_overload :keyPressedByDevice, 2
    

    def addGameKey(keyCode, repeated)
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Raw Device Key Code: ").append((keyCode).to_s(16)).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            input = @inputFactory.getInstanceById(keyCode)
            self.processInputMapping(gameKey, input)
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :addGameKey, 2
    

    # throws Exception
    def processInputMapping(gameKey, input)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Start Passed GameKey: ")
        stringBuffer.append(@stringUtil.toString(gameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(@stringUtil.toString(input))
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.PROCESS)
        if @selectedGameKey != @NONE
            self.gameActionCrud(gameKey, input)
        else
            self.setSelectedAction(gameKey)
        end
    end
    java_overload :processInputMapping, 2
    

    def setSelectedAction(gameKey)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Selected GameKey: ").append(@stringUtil.toString(gameKey)).to_s, self, "setSelectedAction")
        @selectedGameKey = gameKey
        @selectedInput = @NONE
        @helpPaintable.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :setSelectedAction, 1
    

    # throws Exception
    def gameActionCrud(gameKey, input)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Start GameKey: ")
        stringBuffer.append(@stringUtil.toString(@selectedGameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(@stringUtil.toString(@selectedInput))
        @logUtil.putF(stringBuffer.to_s, self, "gameActionCrud")
        if @selectedInput == @NONE
            list = @inputMapping.getInputMapping().getMappedInput(@selectedGameKey)
            isInputAlreadyMappedToSelectedAction = list.contains(input)
            if isInputAlreadyMappedToSelectedAction
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Already Mapped Input: ").append(@stringUtil.toString(input)).to_s, self, "gameActionCrud")
                @selectedInput = input
                @helpPaintable.update(@selectedGameKey, @selectedInput)
                @repaintBehavior.onChangeRepaint(self)
            else
                self.addNewMapping(gameKey, input)
            end
        elsif @inputMapping.isDelete(input)
            self.deleteCurrentMapping()
        else
            self.setSelectedAction(gameKey)
        end
    end
    java_overload :gameActionCrud, 2
    

    # throws Exception
    def addNewMapping(gameKey, input)
        _METHOD_NAME = "addNewMapping"
        @logUtil.putF(@commonStrings.START, self, _METHOD_NAME)
        isInputAlreadyMapped = @inputMapping.getInputMapping().isMapped(input)
        if !isInputAlreadyMapped && !@inputMapping.isSystemInput(input)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Add Key Mapping : GameKey: ")
            stringBuffer.append(@stringUtil.toString(@selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(@stringUtil.toString(@selectedInput))
            @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
            @inputMapping.getInputMapping().add(@selectedGameKey, input)
            @selectedInput = input
            self.update()
        else
            @logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", self, _METHOD_NAME)
            self.setSelectedAction(gameKey)
        end
    end
    java_overload :addNewMapping, 2
    

    # throws Exception
    def deleteCurrentMapping()
        _METHOD_NAME = "deleteCurrentMapping"
        list = @inputMapping.getInputMapping().getMappedInput(@selectedGameKey)
        if list.size() > 1
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Start GameKey: ")
            stringBuffer.append("Remove Key Mapping: GameKey: ")
            stringBuffer.append(@stringUtil.toString(@selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(@stringUtil.toString(@selectedInput))
            @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
            @inputMapping.getInputMapping().remove(@selectedGameKey, @selectedInput)
            @selectedInput = @NONE
            self.update()
        else
            @logUtil.putF("Can't Remove Last Key Mapping", self, _METHOD_NAME)
        end
    end
    java_overload :deleteCurrentMapping, 0
    

    # throws Exception
    def setDefault()
        @inputMapping.setDefault(@abeClientInformation)
        @helpPaintable.update(@NONE, @NONE)
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :setDefault, 0
    

    # throws Exception
    def update()
        @inputMapping.update(@abeClientInformation)
        @helpPaintable.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :update, 0
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        @helpPaintable.paint(graphics)
        @paintable.paint(graphics)
        GameInputMappingCanvas.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "GameInputMappingCanvas")
        begin
            const_set(:DISPLAY, ::Javax::Microedition::Lcdui::Command.new("Controls", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 2))
            const_set(:DEFAULT, ::Javax::Microedition::Lcdui::Command.new("Default", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 2))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInputMappingCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :DISPLAY, :DEFAULT].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :PersistentInputMapping, "org/allbinary/game/input/mapping/PersistentInputMapping" unless const_defined?(:PersistentInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory" unless const_defined?(:ColorFillPaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; module Help; autoload :HelpPaintable, "org/allbinary/game/paint/help/HelpPaintable" unless const_defined?(:HelpPaintable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; module Help; autoload :InputMappingHelpPaintable, "org/allbinary/game/paint/help/InputMappingHelpPaintable" unless const_defined?(:InputMappingHelpPaintable, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :ProcessPaintable, "org/allbinary/graphics/paint/ProcessPaintable" unless const_defined?(:ProcessPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GameInputMappingInstructionsCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" unless const_defined?(:GameInputMappingInstructionsCanvas, false)

begin
    GameInputMappingCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

