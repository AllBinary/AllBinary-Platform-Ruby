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
# package org.allbinary.game


class GameInfo
    attr_accessor :logUtil, :gameInfoData, :gameType, :gameMode, :playerType, :highestLevel, :currentLevel, :NEW_LEVEL, :SET_CURRENT_LEVEL, :NEXT_GAME_LEVEL

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameInfoData = GameInfoData.getInstance()
        @gameType = nil
        @gameMode = nil
        @playerType = nil
        @highestLevel = 0
        @currentLevel = nil
        @NEW_LEVEL = "New Level: "
        @SET_CURRENT_LEVEL = "setCurrentLevel"
        @NEXT_GAME_LEVEL = "nextGameLevel"
    end
    

    def initialize(gameType, gameMode, playerType, highestLevel, currentLevel)
        initialize_fields
        @gameType = gameType
        @gameMode = gameMode
        self.setHighestLevel(highestLevel)
        @currentLevel = currentLevel
        @playerType = playerType
    end
    

    def getGameType()
        return @gameType
    end
    

    def getGameMode()
        return @gameMode
    end
    

    def getPlayerType()
        return @playerType
    end
    

    def getHighestLevel()
        return @highestLevel
    end
    

    def setHighestLevel(highestLevel)
        @highestLevel = highestLevel
    end
    

    def getCurrentLevel()
        return @currentLevel
    end
    

    def setCurrentLevel(currentLevel)
        @currentLevel = currentLevel
        @logUtil.putF(StringMaker.new().append(@NEW_LEVEL).appendint(self.getCurrentLevel()).to_s, self, @SET_CURRENT_LEVEL)
    end
    

    def nextGameLevel()
        if self.getCurrentLevel() < self.getHighestLevel()
            @currentLevel += 1
        end
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(@NEW_LEVEL).appendint(self.getCurrentLevel()).to_s, self, @NEXT_GAME_LEVEL)
    end
    

    def previousGameLevel()
        if self.getCurrentLevel() > 1
            @currentLevel -= 1
        end
    end
    

    def isLastLevel()
        if self.getCurrentLevel() >= self.getHighestLevel()
            return true
        else
            return false
        end
    end
    

    def toHashtable()
        hashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(@gameInfoData.GAME_TYPE, self.getGameType().to_s)
        hashtable.put(@gameInfoData.GAME_MODE, @gameMode.to_s)
        hashtable.put(@gameInfoData.PLAYER_TYPE, @playerType.to_s)
        hashtable.put(@gameInfoData.HIGHEST_LEVEL, (self.getHighestLevel()).to_s)
        hashtable.put(@gameInfoData.CURRENT_LEVEL, (@currentLevel).to_s)
        return hashtable
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        stringBuffer.append(@gameInfoData.GAME_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(self.getGameType().to_s)
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(@gameInfoData.GAME_MODE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(@gameMode.to_s)
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(@gameInfoData.PLAYER_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(StringUtil.getInstance().toString(@playerType))
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(@gameInfoData.HIGHEST_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(self.getHighestLevel())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(@gameInfoData.CURRENT_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(@currentLevel)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/GameInfoData"
require "org/allbinary/game/GameMode"
require "org/allbinary/game/GameType"
require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/game/PlayerType"
require "org/allbinary/game/PlayerTypesFactory"

class GameInfo
    NONE = GameInfo.new(GameTypeFactory.getInstance().NONE, GameMode::NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1)
    LEVEL_NAME = "LEVEL"
end

