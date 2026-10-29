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
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/ImageItem"

class CommandTextItemArrayFactory
    attr_accessor :list, :visitorInterface

    def initialize_fields
        @list = BasicArrayListD.new()
        @visitorInterface = nil
    end
    

    def initialize(visitorInterface)
        initialize_fields
        @visitorInterface = visitorInterface
    end
    

    def getInstance(vector, backgroundBasicColor, foregroundBasicColor)
        vectorUtil = VectorUtil.getInstance()
        size = vectorUtil.getSize(vector)
        @list.clear()
        textItem = nil
        priorityLimit = 7
        displayInfo = DisplayInfoSingleton.getInstance()
        isLargeEnoughDisplayForBigMenu = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH)
        if !isLargeEnoughDisplayForBigMenu && size > 3
            priorityLimit = 3
        end
        command = nil
        (0...size).each do |index|
            command = vectorUtil.elementAt(vector, index)
            if command.getPriority() < priorityLimit
                aBoolean = @visitorInterface.visit(command)
                if aBoolean
                    textItem = CommandTextItem.new(command, ImageItem::LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    @list.add(textItem)
                end
            end
        end
        textItemArray = Array.new(@list.size(), nil)
        size2 = textItemArray.length
        (0...size2).each do |index|
            textItemArray[index] = @list.objectArray[index]
        end
        return textItemArray
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/form/ScreenInfo"
require "org/allbinary/logic/VectorUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/item/CommandTextItem"

