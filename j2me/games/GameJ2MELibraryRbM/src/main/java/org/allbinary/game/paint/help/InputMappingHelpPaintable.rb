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
# package org.allbinary.game.paint.help

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/paint/help/HelpPaintable"

class InputMappingHelpPaintable < HelpPaintable
    attr_accessor :logUtil, :commonStrings, :commonSeps, :stringUtil, :basicColorFactory, :NONE, :EMPTY_STRING, :gameInputMappingArray, :keyMappingArray, :actionBasicColor, :inputBasicColorArray, :selectedBasicColor, :updateMyFontProperties
    class UpdateMyFontProperties
        attr_accessor :actionStringArray, :keymappingBeginWidthArray, :actionStringDeltaXArray, :inputDeltaXArray, :sepArray, :sepWidthArray, :charHeight

        def initialize_fields
            @actionStringArray = StringUtil.getInstance().getArrayInstance()
            @keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
            @actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY
            @inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
            @sepArray = Array.new(0) { Array.new(0, nil) }
            @sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
            @charHeight = 0
        end

        def initialize
            initialize_fields
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @stringUtil = StringUtil.getInstance()
        @basicColorFactory = BasicColorFactory.getInstance()
        @NONE = GameKeyFactory.getInstance().NONE
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @gameInputMappingArray = nil
        @keyMappingArray = Array.new(0, nil)
        @actionBasicColor = Array.new(0, nil)
        @inputBasicColorArray = Array.new(0) { Array.new(0, nil) }
        @selectedBasicColor = nil
        @updateMyFontProperties = UpdateMyFontProperties.new()
    end
    

    def initialize(gameInputMappingArray, backgroundBasicColor, basicColor)
        super("Input Mapping", backgroundBasicColor, basicColor)
        initialize_fields
        @gameInputMappingArray = gameInputMappingArray
        self.update(@NONE, @NONE)
        if backgroundBasicColor == @basicColorFactory.WHITE || basicColor == @basicColorFactory.WHITE
            @selectedBasicColor = @basicColorFactory.RED
        else
            @selectedBasicColor = @basicColorFactory.WHITE
        end
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        updateMyFontProperties = UpdateMyFontProperties.new()
        updateMyFontProperties.charHeight = font.getHeight()
        stringMaker = StringMaker.new()
        inputInfo = @inputInfo
        size = inputInfo.length
        updateMyFontProperties.actionStringArray = Array.new(size, nil)
        updateMyFontProperties.keymappingBeginWidthArray = Array.new(size, 0)
        updateMyFontProperties.actionStringDeltaXArray = Array.new(size, 0)
        updateMyFontProperties.inputDeltaXArray = Array.new(size) { Array.new(0, 0) }
        updateMyFontProperties.sepArray = Array.new(size) { Array.new(0, nil) }
        updateMyFontProperties.sepWidthArray = Array.new(size) { Array.new(0, 0) }
        list = nil
        keyMappings = nil
        actionString = nil
        input = nil
        size2 = 0
        (0...size).each do |index|
            list = @keyMappingArray[index]
            keyMappings = self.get(list)
            stringMaker.delete(0, stringMaker.length())
            actionString = stringMaker.append(inputInfo[index]).append(@commonSeps.COLON).append(@commonSeps.SPACE).append(@commonSeps.SPACE).to_s
            updateMyFontProperties.actionStringArray[index] = actionString
            stringMaker.delete(0, stringMaker.length())
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).to_s) >> 1)
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString)
            size2 = list.size()
            updateMyFontProperties.inputDeltaXArray[index] = Array.new(size2, 0)
            updateMyFontProperties.sepArray[index] = Array.new(size2, nil)
            updateMyFontProperties.sepWidthArray[index] = Array.new(size2, 0)
            (0...size2).each do |index2|
                input = list.objectArray[index2]
                updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName())
                updateMyFontProperties.sepArray[index][index2] = @EMPTY_STRING
                if index2 + 1 < list.size()
                    if list.size() == 2
                        updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::AND
                    else
                        if index2 + 2 == list.size()
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::MORE_THAN_TWO_IN_LIST_AND
                        else
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::SEP
                        end
                    end
                end
                if updateMyFontProperties.sepArray[index][index2] != @EMPTY_STRING
                    updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2])
                end
            end
        end
        @updateMyFontProperties = updateMyFontProperties
        super(graphics)
    end
    

    def update(selectedGameKey, selectedInput)
        stringMaker = StringMaker.new()
        @logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(@stringUtil.toString(selectedGameKey)).append(" Input: ").append(@stringUtil.toString(selectedInput)).to_s, self, @commonStrings.UPDATE)
        gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        size = @gameInputMappingArray.length
        keyInfo = Array.new(size, nil)
        keyMappingArray = Array.new(size, nil)
        actionBasicColor = Array.new(size, nil)
        inputBasicColorArray = Array.new(size, nil)
        gameInputMapping = nil
        gameKey = nil
        list = nil
        (0...size).each do |index|
            gameInputMapping = @gameInputMappingArray[index]
            gameKey = gameInputMapping.getGameKey()
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
            size2 = list.size()
            inputBasicColorArray[index] = Array.new(size2, nil)
            (0...size2).each do |index2|
                inputBasicColorArray[index][index2] = @basicColor
            end
            if gameKey == selectedGameKey
                stringMaker.delete(0, stringMaker.length())
                @logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(@stringUtil.toString(selectedGameKey)).to_s, self, @commonStrings.UPDATE)
                actionBasicColor[index] = @selectedBasicColor
                indexOfSelectedInput = list.indexOf(selectedInput)
                if indexOfSelectedInput >= 0
                    stringMaker.delete(0, stringMaker.length())
                    @logUtil.putF(stringMaker.append("Found: selected Input: ").append(@stringUtil.toString(selectedInput)).to_s, self, @commonStrings.UPDATE)
                    inputBasicColorArray[index][indexOfSelectedInput] = @selectedBasicColor
                end
            else
                actionBasicColor[index] = @basicColor
            end
            keyInfo[index] = gameInputMapping.getName()
            keyMappingArray[index] = list
        end
        @keyMappingArray = keyMappingArray
        @actionBasicColor = actionBasicColor
        @inputBasicColorArray = inputBasicColorArray
        self.class.superclass.instance_method(:setInputInfoP).bind(self).call(keyInfo)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def get(keyList)
        stringBuffer = StringMaker.new()
        key = nil
        size = keyList.size()
        (0...size).each do |index|
            key = keyList.objectArray[index]
            stringBuffer.append(key.getName())
            if index + 1 < keyList.size()
                if keyList.size() == 2
                    stringBuffer.append(InputMappingHelpPaintable::AND)
                else
                    if index + 2 == keyList.size()
                        stringBuffer.append(InputMappingHelpPaintable::MORE_THAN_TWO_IN_LIST_AND)
                    else
                        stringBuffer.append(InputMappingHelpPaintable::SEP)
                    end
                end
            end
        end
        return stringBuffer.to_s
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        graphics.setColor(@basicColor.to_i)
        graphics.drawString(@title, halfWidth - @titleBeginWidth, @updateMyFontProperties.charHeight, @anchor)
        inputInfo = @inputInfo
        size = inputInfo.length
        y = 0
        deltaX = 0
        size2 = 0
        actionString = nil
        input = nil
        list = nil
        sep = nil
        beginWidth = 0
        (0...size).each do |index|
            y = (index + 3) * @updateMyFontProperties.charHeight
            deltaX = 0
            list = @keyMappingArray[index]
            size2 = list.size()
            beginWidth = @updateMyFontProperties.keymappingBeginWidthArray[index]
            graphics.setColor(@actionBasicColor[index].to_i)
            actionString = @updateMyFontProperties.actionStringArray[index]
            graphics.drawString(actionString, halfWidth - beginWidth + deltaX, y, @anchor)
            deltaX += @updateMyFontProperties.actionStringDeltaXArray[index]
            (0...size2).each do |index2|
                input = list.objectArray[index2]
                graphics.setColor(@inputBasicColorArray[index][index2].to_i)
                graphics.drawString(input.getName(), halfWidth - beginWidth + deltaX, y, @anchor)
                deltaX += @updateMyFontProperties.inputDeltaXArray[index][index2]
                sep = @updateMyFontProperties.sepArray[index][index2]
                graphics.setColor(@basicColor.to_i)
                graphics.drawString(sep, halfWidth - beginWidth + deltaX, y, @anchor)
                deltaX += @updateMyFontProperties.sepWidthArray[index][index2]
            end
        end
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/mapping/GameInputMapping"
require "org/allbinary/game/input/mapping/PersistentInputMapping"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

class InputMappingHelpPaintable
    AND = " and "
    SEP = ", "
    MORE_THAN_TWO_IN_LIST_AND = ", and "
end

