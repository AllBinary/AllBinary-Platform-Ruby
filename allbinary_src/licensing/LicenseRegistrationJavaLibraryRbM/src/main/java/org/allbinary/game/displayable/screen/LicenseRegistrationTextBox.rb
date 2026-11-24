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
# package org.allbinary.game.displayable.screen

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/CustomTextBox"

module ::Org; module Allbinary; module Game; module Displayable; module Screen

class LicenseRegistrationTextBox < ::Org::Allbinary::Graphics::Form::Item::CustomTextBox
    attr_accessor :logUtil, :pleaseWaitPaintable, :paintable

    def jfields_org_allbinary_game_displayable_screen_LicenseRegistrationTextBox
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @pleaseWaitPaintable = ::Org::Allbinary::Graphics::Paint::SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    

    def initialize(cmdListener, backgrounBasicColor, foregroundBasicColor)
        super(cmdListener, "Enter Registration Code:", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, 60, ::Javax::Microedition::Lcdui::TextField::ANY, ::Javax::Microedition::Lcdui::Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_displayable_screen_LicenseRegistrationTextBox
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().TOGGLE_KEYBOARD)
        self.addCommand(SUBMIT_COMMAND)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def open()
        begin
            virtualKeyboardEventHandler = ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance()
            virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
        LicenseRegistrationTextBox.superclass.java_super_method(:open, 0).bind(self).call()
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        self.repaint()
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        begin
            virtualKeyboardEventHandler = ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance()
            virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.HIDE_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
        @paintable = @pleaseWaitPaintable
        self.repaint()
        LicenseRegistrationTextBox.superclass.java_super_method(:close, 0).bind(self).call()
    end
    java_overload :close, 0
    

    def paint(graphics)
        LicenseRegistrationTextBox.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @paintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def submit()
        commandListener = self.getCustomCommandListener()
        commandListener.commandAction(SUBMIT_COMMAND, self)
    end
    java_overload :submit, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DISPLAY_COMMAND, ::Javax::Microedition::Lcdui::Command.new("Register", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3))
            const_set(:SUBMIT_COMMAND, ::Javax::Microedition::Lcdui::Command.new("Submit", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 3))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseRegistrationTextBox"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DISPLAY_COMMAND, :SUBMIT_COMMAND].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :TextField, "javax/microedition/lcdui/TextField" unless const_defined?(:TextField, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :SimpleTextPaintable, "org/allbinary/graphics/paint/SimpleTextPaintable" unless const_defined?(:SimpleTextPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler" unless const_defined?(:VirtualKeyboardEventHandler, false); end; end; end; end

begin
    LicenseRegistrationTextBox.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

