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
# package org.allbinary.game.score

# require "javax/microedition/lcdui/Command"

class HighScoreCommandsBaseFactory
    attr_accessor :logUtil, :HIGH_SCORE_COMMANDS

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @HIGH_SCORE_COMMANDS = nil
    end
    

    def initialize(_HIGH_SCORE_COMMANDS)
        initialize_fields
        @HIGH_SCORE_COMMANDS = _HIGH_SCORE_COMMANDS
    end
    

    def isHighScoreCommand(command)
        (@HIGH_SCORE_COMMANDS.length - 1).step(0, -(1)) do |index|
            if command == @HIGH_SCORE_COMMANDS[index]
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def getIndex(command)
        (@HIGH_SCORE_COMMANDS.length - 1).step(0, -(1)) do |index|
            if command == @HIGH_SCORE_COMMANDS[index]
                return index
            end
        end
        raise StandardError.new("No Such Command")
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/logic/communication/log/LogUtil"

