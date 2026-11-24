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


module ::Org; module Allbinary; module Game

class GameInfo
    attr_accessor :logUtil, :gameInfoData, :gameType, :gameMode, :playerType, :highestLevel, :currentLevel, :NEW_LEVEL, :SET_CURRENT_LEVEL, :NEXT_GAME_LEVEL

    def jfields_org_allbinary_game_GameInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameInfoData = GameInfoData.getInstance()
        @gameType = nil unless instance_variable_defined?(:@gameType)
        @gameMode = nil unless instance_variable_defined?(:@gameMode)
        @playerType = nil unless instance_variable_defined?(:@playerType)
        @highestLevel = 0 unless instance_variable_defined?(:@highestLevel)
        @currentLevel = nil unless instance_variable_defined?(:@currentLevel)
        @NEW_LEVEL = "New Level: "
        @SET_CURRENT_LEVEL = "setCurrentLevel"
        @NEXT_GAME_LEVEL = "nextGameLevel"
    end
    

    def initialize(gameType, gameMode, playerType, highestLevel, currentLevel)
        jfields_org_allbinary_game_GameInfo
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@NEW_LEVEL).appendint(self.getCurrentLevel()).to_s, self, @SET_CURRENT_LEVEL)
    end
    

    def nextGameLevel()
        if self.getCurrentLevel() < self.getHighestLevel()
            @currentLevel += 1
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@NEW_LEVEL).appendint(self.getCurrentLevel()).to_s, self, @NEXT_GAME_LEVEL)
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
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        hashtable.put(@gameInfoData.GAME_TYPE, self.getGameType().to_s)
        hashtable.put(@gameInfoData.GAME_MODE, @gameMode.to_s)
        hashtable.put(@gameInfoData.PLAYER_TYPE, @playerType.to_s)
        hashtable.put(@gameInfoData.HIGHEST_LEVEL, (self.getHighestLevel()).to_s)
        hashtable.put(@gameInfoData.CURRENT_LEVEL, (@currentLevel).to_s)
        return hashtable
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
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
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@playerType))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LEVEL_NAME, "LEVEL")
        begin
            const_set(:NONE, GameInfo.new(GameTypeFactory.getInstance().NONE, GameMode::NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NONE, :LEVEL_NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :GameInfoData, "org/allbinary/game/GameInfoData" unless const_defined?(:GameInfoData, false)
autoload :GameMode, "org/allbinary/game/GameMode" unless const_defined?(:GameMode, false)
autoload :GameType, "org/allbinary/game/GameType" unless const_defined?(:GameType, false)
autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false)
autoload :PlayerType, "org/allbinary/game/PlayerType" unless const_defined?(:PlayerType, false)
autoload :PlayerTypesFactory, "org/allbinary/game/PlayerTypesFactory" unless const_defined?(:PlayerTypesFactory, false)

begin
    GameInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

