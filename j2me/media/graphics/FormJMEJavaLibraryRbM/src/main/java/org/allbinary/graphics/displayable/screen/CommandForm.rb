# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/Form"
require "org/allbinary/game/displayable/canvas/MenuListener"
require "org/allbinary/graphics/displayable/command/MyCommandInterface"

module ::Org; module Allbinary; module Graphics; module Displayable; module Screen

class CommandForm < ::Javax::Microedition::Lcdui::Form
    include ::Org::Allbinary::Graphics::Displayable::Command::MyCommandInterface
    include ::Org::Allbinary::Game::Displayable::Canvas::MenuListener
    attr_accessor :logUtil, :commonStrings, :repaintProcessor, :commandStack

    def jfields_org_allbinary_graphics_displayable_screen_CommandForm
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(self)
        @commandStack = nil unless instance_variable_defined?(:@commandStack)
    end
    

    def self.getNullCommandForm()
        if NULL_COMMAND_FORM == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (CommandForm.instance_exec(CommandForm.new(::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:NULL_COMMAND_FORM) if const_defined?(:NULL_COMMAND_FORM, false); const_set(:NULL_COMMAND_FORM, java_value) })
        end
        return NULL_COMMAND_FORM
    end
    

    def initialize(commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)
        super(formTitle)
        jfields_org_allbinary_graphics_displayable_screen_CommandForm
        @commandStack = ::Org::Allbinary::Logic::StdUtil.getInstance().createStack()
        begin
            @repaintProcessor.process()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def initCommands(cmdListener)
    end
    java_overload :initCommands, 1
    

    def open()
        @logUtil.putF(@commonStrings.START, self, "open")
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLOSE)
    end
    java_overload :close, 0
    

    # throws Exception
    def update()
        @repaintProcessor.process()
    end
    java_overload :update, 0
    

    def getSourceId()
        return 0
    end
    java_overload :getSourceId, 0
    

    def addCommand(command)
        @commandStack.push(command)
        CommandForm.superclass.java_super_method(:addCommand, 1).bind(self).call(command)
    end
    java_overload :addCommand, 1
    

    def removeAllCommands()
        size = @commandStack.size()
        (0...size).each do |index|
            CommandForm.superclass.java_super_method(:removeCommand, 1).bind(self).call(@commandStack.pop())
        end
    end
    java_overload :removeAllCommands, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COMMAND_FORM, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CommandForm"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COMMAND_FORM].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABStack, "org/allbinary/util/ABStack" unless const_defined?(:ABStack, false); end; end; end
autoload :ScreenRepaintProcessorFactory, "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory" unless const_defined?(:ScreenRepaintProcessorFactory, false)

begin
    CommandForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

