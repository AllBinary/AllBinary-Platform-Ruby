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
# package org.allbinary.game.score.remote

require "java/lang/Object"
require "org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorInterface"

class RemoteHighScoresSubmissionProcessor
    include RemoteHighScoresSubmissionProcessorInterface
    attr_accessor :logUtil, :commonStrings, :noCrypt

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @noCrypt = NoCrypt.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def process(remoteHighScores, abeClientInformation, highScore)
        java_monitor.synchronize do
        begin
            @logUtil.putF("Begin Remote HighScores Submission", self, @commonStrings.PROCESS)
            gameInfoData = GameInfoData.getInstance()
            hashtable = abeClientInformation.toHashtable()
            HashtableUtil.getInstance().putAll(highScore.getGameInfo().toHashtable(), hashtable)
            hashtable.put(RemoteHighScoresData.getInstance().CUSTOMER_USER_NAME, "None")
            hashtable.put(RemoteHighScoresData.getInstance().DISPLAY_NAME, highScore.getName())
            hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().to_s)
            hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().to_s)
            displayInfoSingleton = DisplayInfoSingleton.getInstance()
            hashtable.put(displayInfoSingleton.ORIENTATION, BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()))
            hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, GameConfigurationCentral.getInstance().to_s)
            hashtable.put(RemoteHighScoresData.getInstance().SCORE, (highScore.getScore()).to_s)
            if XmlRpcAbeClient.isOnline
                resultHashtable = XmlRpcRemoteHighScoresClient.new(abeClientInformation, "highscoresubmissionservicessl.php", "HighScoreSubmissionService.process").get(hashtable, @noCrypt)
                remoteHighScores.update(resultHashtable)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
        end
    end
end

autoload :GameInfoData, "org/allbinary/game/GameInfoData"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :HighScore, "org/allbinary/game/score/HighScore"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :XmlRpcAbeClient, "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :NoCrypt, "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :HashtableUtil, "org/allbinary/util/HashtableUtil"
autoload :RemoteHighScores, "org/allbinary/game/score/remote/RemoteHighScores"
autoload :RemoteHighScoresData, "org/allbinary/game/score/remote/RemoteHighScoresData"
autoload :XmlRpcRemoteHighScoresClient, "org/allbinary/game/score/remote/XmlRpcRemoteHighScoresClient"

