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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"
require "org/allbinary/game/input/event/RawKeyEventListener"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class CustomTextBox < ::Org::Allbinary::Game::Displayable::Canvas::GameCommandCanvas
    include ::Org::Allbinary::Game::Input::Event::RawKeyEventListener
    attr_accessor :textFieldItem, :inputFactory

    def jfields_org_allbinary_graphics_form_item_CustomTextBox
        @textFieldItem = nil unless instance_variable_defined?(:@textFieldItem)
        @inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
    end
    

    def initialize(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        super(cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_item_CustomTextBox
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        textFieldItem = ABTextFieldItem.new(self, ::Org::Allbinary::Graphics::Form::Item::Validation::TextItemVisitor.new(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.setString(text)
        @textFieldItem = textFieldItem
        self.setTitle(label)
    end
    

    def submit()
    end
    java_overload :submit, 0
    

    def onEventRaw(keyCode, deviceId, repeated)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).appendint(keyCode).to_s, self, "onEvent")
        self.keyPressedByDevice(keyCode, deviceId)
    end
    java_overload :onEventRaw, 3
    

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
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).appendint(keyCode).to_s, self, @gameInputStrings.KEY_PRESSED)
            platformKeyFactory = ::Org::Allbinary::Game::Input::PlatformKeyFactory.getInstance()
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
    java_overload :keyPressedByDevice, 2
    

    def keyReleasedByDevice(keyCode, deviceId)
    end
    java_overload :keyReleasedByDevice, 2
    

    def paint(graphics)
        graphics.setColor(@backgroundColor)
        graphics.fillRect(0, 0, @displayInfo.getLastWidth(), @displayInfo.getLastHeight())
        graphics.setColor(@foregroundColor)
        if !::Org::Allbinary::J2MEUtil.isJ2ME()
            graphics.drawString(self.getTitle(), 8, 1, 0)
        end
        self.paintXY(graphics, 8, graphics.getFont().getHeight() + 2)
        CustomTextBox.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1
    

    def paintXY(graphics, x, y)
        @textFieldItem.paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def getTextFieldItem()
        return @textFieldItem
    end
    java_overload :getTextFieldItem, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformKeyFactory, "org/allbinary/game/input/PlatformKeyFactory" unless const_defined?(:PlatformKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; module Validation; autoload :TextItemVisitor, "org/allbinary/graphics/form/item/validation/TextItemVisitor" unless const_defined?(:TextItemVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :ABTextFieldItem, "org/allbinary/graphics/form/item/ABTextFieldItem" unless const_defined?(:ABTextFieldItem, false)

end; end; end; end; end

