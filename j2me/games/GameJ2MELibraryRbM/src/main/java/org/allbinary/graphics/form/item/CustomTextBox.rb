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

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"
require "org/allbinary/game/input/event/RawKeyEventListener"

class CustomTextBox < GameCommandCanvas
    include RawKeyEventListener
    attr_accessor :textFieldItem, :inputFactory

    def initialize_fields
        @textFieldItem = nil
        @inputFactory = InputFactory.getInstance()
    end
    

    def initialize(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        super(cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        stringUtil = StringUtil.getInstance()
        textFieldItem = ABTextFieldItem.new(self, TextItemVisitor.new(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.setString(text)
        @textFieldItem = textFieldItem
        self.setTitle(label)
    end
    

    def submit()
    end
    

    def onEventRaw(keyCode, deviceId, repeated)
        @logUtil.putF(StringMaker.new().append(@commonStrings.START).appendint(keyCode).to_s, self, "onEvent")
        self.keyPressedByDevice(keyCode, deviceId)
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
        begin
            @logUtil.putF(StringMaker.new().append(CommonSeps.getInstance().SPACE).appendint(keyCode).to_s, self, @gameInputStrings.KEY_PRESSED)
            platformKeyFactory = PlatformKeyFactory.getInstance()
            input = @inputFactory.getInstanceById(keyCode)
            if platformKeyFactory.isSubmission(input)
                self.submit()
            else
                @textFieldItem.keyPressed(keyCode)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.KEY_PRESSED, e)
        end
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
    end
    

    def paint(graphics)
        graphics.setColor(@backgroundColor)
        graphics.fillRect(0, 0, @displayInfo.getLastWidth(), @displayInfo.getLastHeight())
        graphics.setColor(@foregroundColor)
        if !J2MEUtil.isJ2ME()
            graphics.drawString(self.getTitle(), 8, 1, 0)
        end
        self.paintXY(graphics, 8, graphics.getFont().getHeight() + 2)
        super(graphics)
    end
    

    def paintXY(graphics, x, y)
        @textFieldItem.paintXY(graphics, x, y)
    end
    

    def getTextFieldItem()
        return @textFieldItem
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/PlatformKeyFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/item/validation/TextItemVisitor"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/graphics/form/item/ABTextFieldItem"

