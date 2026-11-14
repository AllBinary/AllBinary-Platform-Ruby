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

require "javax/microedition/lcdui/Form"
require "org/allbinary/game/displayable/canvas/MenuListener"
require "org/allbinary/graphics/displayable/command/MyCommandInterface"

class CommandForm < Form
    include MyCommandInterface
    include MenuListener
    attr_accessor :logUtil, :commonStrings, :repaintProcessor, :commandStack

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(self)
        @commandStack = nil
    end
    

    def self.getNullCommandForm()
        if CommandForm::NULL_COMMAND_FORM == NullUtil.getInstance().NULL_OBJECT
            (CommandForm.send(:remove_const, :NULL_COMMAND_FORM) if CommandForm.const_defined?(:NULL_COMMAND_FORM, false); CommandForm.const_set(:NULL_COMMAND_FORM, CommandForm.new(NullCommandListener::NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
        end
        return CommandForm::NULL_COMMAND_FORM
    end
    

    def initialize(commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)
        super(formTitle)
        initialize_fields
        @commandStack = StdUtil.getInstance().createStack()
        begin
            @repaintProcessor.process()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def initCommands(cmdListener)
    end
    

    def open()
        @logUtil.putF(@commonStrings.START, self, "open")
    end
    

    # throws Exception
    def close()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLOSE)
    end
    

    # throws Exception
    def update()
        @repaintProcessor.process()
    end
    

    def getSourceId()
        return 0
    end
    

    def addCommand(command)
        @commandStack.push(command)
        super(command)
    end
    

    def removeAllCommands()
        size = @commandStack.size()
        (0...size).each do |index|
            CommandForm.superclass.instance_method(:removeCommand).bind(self).call(@commandStack.pop())
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COMMAND_FORM, NullUtil.getInstance().NULL_OBJECT)
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

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener"
autoload :Processor, "org/allbinary/canvas/Processor"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABStack, "org/allbinary/util/ABStack"
autoload :ScreenRepaintProcessorFactory, "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory"

begin
    CommandForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

