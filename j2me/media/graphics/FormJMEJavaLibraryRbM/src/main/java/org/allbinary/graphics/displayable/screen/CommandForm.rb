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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Form"
# require "javax/microedition/lcdui/NullCommandListener"
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
            CommandForm::NULL_COMMAND_FORM = CommandForm.new(NullCommandListener::NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
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
            self.class.superclass.instance_method(:removeCommand).bind(self).call(@commandStack.pop())
        end
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABStack"
require "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory"

class CommandForm
    NULL_COMMAND_FORM = NullUtil.getInstance().NULL_OBJECT
end

