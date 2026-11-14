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
# package org.allbinary.game.score.displayable

require "org/allbinary/game/score/HighScoresResultsListener"

class HighScoreUtil
    include HighScoresResultsListener
    attr_accessor :logUtil, :commonStrings, :highScoresFactoryInterface, :highScoresArray, :highScore, :abeClientInformation, :gameInfo, :highScoresHelper, :firstTime

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @highScoresFactoryInterface = nil
        @highScoresArray = nil
        @highScore = nil
        @abeClientInformation = nil
        @gameInfo = nil
        @highScoresHelper = nil
        @firstTime = true
    end
    

    def initialize(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        initialize_fields
        @highScoresFactoryInterface = highScoresFactoryInterface
        @highScoresHelper = highScoresHelper
        @highScoresArray = @highScoresHelper.getHighScoresArray()
        @highScore = highScore
        @abeClientInformation = abeClientInformation
        @gameInfo = gameInfo
    end
    

    def setHighScoresArray(highScoresArray)
        @highScoresArray = highScoresArray
        @firstTime = false
        self.saveHighScore()
    end
    

    def update(name)
        HighScoreNamePersistanceSingleton.getInstance().save(@abeClientInformation, @gameInfo, name)
        @highScore.setName(name)
    end
    

    def saveHighScore()
        @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(StringUtil.getInstance().toString(@highScore)).to_s, self, "saveHighScore")
        size = @highScoresArray.length
        if @firstTime && size == 0
            @logUtil.putF("Games canvas did not give us any HighScores", self, "saveHighScore")
            @highScoresFactoryInterface.fetchHighScores(@gameInfo, self)
            return
        end
        highScores = nil
        highScoresAsString = nil
        (0...size).each do |index|
            highScores = @highScoresArray[index]
            highScores.addHighScore(@highScore)
            highScoresAsString = highScores.to_s
            @logUtil.putF(StringMaker.new().append("Added/Adding Score: ").append(highScoresAsString).to_s, self, "saveHighScore")
        end
        @highScoresHelper.setHighScoresArray(@highScoresArray)
    end
    

    def submit(myCanvas)
        commandListener = myCanvas.getCustomCommandListener()
        commandListener.commandAction(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND, myCanvas)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SUBMIT_TEXTBOX_COMMAND, Command.new("Submit", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HighScoreUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SUBMIT_TEXTBOX_COMMAND].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :HighScore, "org/allbinary/game/score/HighScore"
autoload :HighScoreNamePersistanceSingleton, "org/allbinary/game/score/HighScoreNamePersistanceSingleton"
autoload :HighScores, "org/allbinary/game/score/HighScores"
autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface"
autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    HighScoreUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

