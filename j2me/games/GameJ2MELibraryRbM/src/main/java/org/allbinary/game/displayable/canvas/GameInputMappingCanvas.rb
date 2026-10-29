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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/mapping/InputMappingInterface"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"

class GameInputMappingCanvas < GameCommandCanvas
    include InputMappingInterface
    attr_accessor :paintable, :helpPaintable, :colorFillPaintable, :inputMapping, :NONE, :abeClientInformation, :selectedGameKey, :selectedInput, :inputFactory

    def initialize_fields
        @paintable = nil
        @helpPaintable = nil
        @colorFillPaintable = nil
        @inputMapping = nil
        @NONE = GameKeyFactory.getInstance().NONE
        @abeClientInformation = nil
        @selectedGameKey = @NONE
        @selectedInput = @NONE
        @inputFactory = InputFactory.getInstance()
    end
    

    def initialize(abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)
        super(commandListener, GameInputMappingCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        if helpPaintable == nil
            raise StandardError.new("Help Paintable Exception")
        end
        @abeClientInformation = abeClientInformation
        @helpPaintable = helpPaintable
        @inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        @paintable = ProcessPaintable.new()
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    # throws Exception
    def close()
        super()
        @paintable.process()
        @selectedGameKey = @NONE
        @selectedInput = @NONE
        self.update()
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(GameInputMappingCanvas::DEFAULT)
        self.addCommand(GameInputMappingInstructionsCanvas::DISPLAY)
        self.setCommandListener(cmdListener)
    end
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        self.addGameKey(keyCode, false)
        super(keyCode, 0)
    end
    

    def addGameKey(keyCode, repeated)
        begin
            @logUtil.putF(StringMaker.new().append("Raw Device Key Code: ").append((keyCode).to_s(16)).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            input = @inputFactory.getInstanceById(keyCode)
            self.processInputMapping(gameKey, input)
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    

    # throws Exception
    def processInputMapping(gameKey, input)
        stringBuffer = StringMaker.new()
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
    

    def setSelectedAction(gameKey)
        @logUtil.putF(StringMaker.new().append("Selected GameKey: ").append(@stringUtil.toString(gameKey)).to_s, self, "setSelectedAction")
        @selectedGameKey = gameKey
        @selectedInput = @NONE
        @helpPaintable.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.onChangeRepaint(self)
    end
    

    # throws Exception
    def gameActionCrud(gameKey, input)
        stringBuffer = StringMaker.new()
        stringBuffer.append("Start GameKey: ")
        stringBuffer.append(@stringUtil.toString(@selectedGameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(@stringUtil.toString(@selectedInput))
        @logUtil.putF(stringBuffer.to_s, self, "gameActionCrud")
        if @selectedInput == @NONE
            list = @inputMapping.getInputMapping().getMappedInput(@selectedGameKey)
            isInputAlreadyMappedToSelectedAction = list.contains(input)
            if isInputAlreadyMappedToSelectedAction
                @logUtil.putF(StringMaker.new().append("Already Mapped Input: ").append(@stringUtil.toString(input)).to_s, self, "gameActionCrud")
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
    

    # throws Exception
    def addNewMapping(gameKey, input)
        _METHOD_NAME = "addNewMapping"
        @logUtil.putF(@commonStrings.START, self, _METHOD_NAME)
        isInputAlreadyMapped = @inputMapping.getInputMapping().isMapped(input)
        if !isInputAlreadyMapped && !@inputMapping.isSystemInput(input)
            stringBuffer = StringMaker.new()
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
    

    # throws Exception
    def deleteCurrentMapping()
        _METHOD_NAME = "deleteCurrentMapping"
        list = @inputMapping.getInputMapping().getMappedInput(@selectedGameKey)
        if list.size() > 1
            stringBuffer = StringMaker.new()
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
    

    # throws Exception
    def setDefault()
        @inputMapping.setDefault(@abeClientInformation)
        @helpPaintable.update(@NONE, @NONE)
        @repaintBehavior.onChangeRepaint(self)
    end
    

    # throws Exception
    def update()
        @inputMapping.update(@abeClientInformation)
        @helpPaintable.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.onChangeRepaint(self)
    end
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        @helpPaintable.paint(graphics)
        @paintable.paint(graphics)
        super(graphics)
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/mapping/PersistentInputMapping"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintableFactory"
require "org/allbinary/game/paint/help/HelpPaintable"
require "org/allbinary/game/paint/help/InputMappingHelpPaintable"
require "org/allbinary/graphics/paint/ProcessPaintable"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas"

class GameInputMappingCanvas
    NAME = "GameInputMappingCanvas"
    DISPLAY = Command.new("Controls", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
    DEFAULT = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 2)
end

