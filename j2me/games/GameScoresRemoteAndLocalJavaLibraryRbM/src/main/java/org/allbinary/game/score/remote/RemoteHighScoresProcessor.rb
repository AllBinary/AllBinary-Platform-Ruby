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
require "org/allbinary/game/score/remote/RemoteHighScoresProcessorInterface"

class RemoteHighScoresProcessor
    include RemoteHighScoresProcessorInterface
    attr_accessor :logUtil, :commonStrings, :noCrypt

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @noCrypt = NoCrypt.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def process(remoteHighScores, abeClientInformation, gameInfo)
        java_monitor.synchronize do
        @logUtil.putF("Begin Remote HighScores Retrieval", self, @commonStrings.PROCESS)
        gameInfoData = GameInfoData.getInstance()
        hashtable = abeClientInformation.toHashtable()
        HashtableUtil.getInstance().putAll(gameInfo.toHashtable(), hashtable)
        hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().to_s)
        hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().to_s)
        displayInfoSingleton = DisplayInfoSingleton.getInstance()
        hashtable.put(displayInfoSingleton.ORIENTATION, BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()))
        hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, GameConfigurationCentral.getInstance().to_s)
        if XmlRpcAbeClient.isOnline
            resultHashtable = XmlRpcRemoteHighScoresClient.new(abeClientInformation, "highscoresservicessl.php", "HighScoresService.process").get(hashtable, @noCrypt)
            remoteHighScores.update(resultHashtable)
        end
        end
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/game/GameInfoData"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/game/score/remote/RemoteHighScores"
require "org/allbinary/game/score/remote/RemoteHighScoresData"
require "org/allbinary/game/score/remote/XmlRpcRemoteHighScoresClient"

