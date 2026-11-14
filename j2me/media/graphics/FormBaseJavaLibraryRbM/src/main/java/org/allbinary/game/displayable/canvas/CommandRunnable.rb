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

require "java/lang/Runnable"

class CommandRunnable
    include Runnable
    attr_accessor :logUtil, :commonStrings, :commandFormInputProcessor, :command

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commandFormInputProcessor = nil
        @command = nil
    end
    

    def initialize(commandFormInputProcessor, command)
        initialize_fields
        @commandFormInputProcessor = commandFormInputProcessor
        @command = command
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            canvas = @commandFormInputProcessor.getCanvas()
            commandListener = canvas.getCustomCommandListener()
            commandListener.commandAction(@command, canvas)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :CommandFormInputProcessor, "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"

