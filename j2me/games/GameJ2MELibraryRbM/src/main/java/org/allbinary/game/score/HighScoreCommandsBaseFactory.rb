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


module ::Org; module Allbinary; module Game; module Score

class HighScoreCommandsBaseFactory
    attr_accessor :logUtil, :HIGH_SCORE_COMMANDS

    def jfields_org_allbinary_game_score_HighScoreCommandsBaseFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @HIGH_SCORE_COMMANDS = nil unless instance_variable_defined?(:@HIGH_SCORE_COMMANDS)
    end
    

    def initialize(_HIGH_SCORE_COMMANDS)
        jfields_org_allbinary_game_score_HighScoreCommandsBaseFactory
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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end

