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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/paint/help/HelpPaintable"

module ::Org; module Allbinary; module Game; module Paint; module Help

class InputMappingHelpPaintable < HelpPaintable
    attr_accessor :logUtil, :commonStrings, :commonSeps, :stringUtil, :basicColorFactory, :NONE, :EMPTY_STRING, :gameInputMappingArray, :keyMappingArray, :actionBasicColor, :inputBasicColorArray, :selectedBasicColor, :updateMyFontProperties

    def jfields_org_allbinary_game_paint_help_InputMappingHelpPaintable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
        @EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @gameInputMappingArray = nil unless instance_variable_defined?(:@gameInputMappingArray)
        @keyMappingArray = Array.new(0, nil)
        @actionBasicColor = ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY
        @inputBasicColorArray = Array.new(0) { Array.new(0, nil) }
        @selectedBasicColor = nil unless instance_variable_defined?(:@selectedBasicColor)
        @updateMyFontProperties = UpdateMyFontProperties.new()
    end
    

    def initialize(gameInputMappingArray, backgroundBasicColor, basicColor)
        super("Input Mapping", backgroundBasicColor, basicColor)
        jfields_org_allbinary_game_paint_help_InputMappingHelpPaintable
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
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        inputInfo = @inputInfo
        size = inputInfo.length
        updateMyFontProperties.actionStringArray = Array.new(size, nil)
        updateMyFontProperties.keymappingBeginWidthArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        updateMyFontProperties.actionStringDeltaXArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
            updateMyFontProperties.inputDeltaXArray[index] = (Array.new(size2, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            updateMyFontProperties.sepArray[index] = Array.new(size2, nil)
            updateMyFontProperties.sepWidthArray[index] = (Array.new(size2, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            (0...size2).each do |index2|
                input = list.objectArray[index2]
                updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName())
                updateMyFontProperties.sepArray[index][index2] = @EMPTY_STRING
                if index2 + 1 < list.size()
                    if list.size() == 2
                        updateMyFontProperties.sepArray[index][index2] = AND
                    else
                        if index2 + 2 == list.size()
                            updateMyFontProperties.sepArray[index][index2] = MORE_THAN_TWO_IN_LIST_AND
                        else
                            updateMyFontProperties.sepArray[index][index2] = SEP
                        end
                    end
                end
                if updateMyFontProperties.sepArray[index][index2] != @EMPTY_STRING
                    updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2])
                end
            end
        end
        @updateMyFontProperties = updateMyFontProperties
        InputMappingHelpPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
    

    def update(selectedGameKey, selectedInput)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        @logUtil.putF(stringMaker.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(@stringUtil.toString(selectedGameKey)).append(" Input: ").append(@stringUtil.toString(selectedInput)).to_s, self, @commonStrings.UPDATE)
        gameKeyMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
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
        InputMappingHelpPaintable.superclass.java_super_method(:setInputInfoP, 1).bind(self).call(keyInfo)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :update, 2
    

    def get(keyList)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        key = nil
        size = keyList.size()
        (0...size).each do |index|
            key = keyList.objectArray[index]
            stringBuffer.append(key.getName())
            if index + 1 < keyList.size()
                if keyList.size() == 2
                    stringBuffer.append(AND)
                else
                    if index + 2 == keyList.size()
                        stringBuffer.append(MORE_THAN_TWO_IN_LIST_AND)
                    else
                        stringBuffer.append(SEP)
                    end
                end
            end
        end
        return stringBuffer.to_s
    end
    java_overload :get, 1
    

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
    java_overload :paint, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:AND, " and ")
        const_set(:SEP, ", ")
        const_set(:MORE_THAN_TWO_IN_LIST_AND, ", and ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputMappingHelpPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:AND, :SEP, :MORE_THAN_TWO_IN_LIST_AND].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :GameInputMapping, "org/allbinary/game/input/mapping/GameInputMapping" unless const_defined?(:GameInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :PersistentInputMapping, "org/allbinary/game/input/mapping/PersistentInputMapping" unless const_defined?(:PersistentInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :UpdateMyFontProperties, "org/allbinary/game/paint/help/UpdateMyFontProperties" unless const_defined?(:UpdateMyFontProperties, false)

begin
    InputMappingHelpPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

