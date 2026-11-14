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

autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :GameInfoData, "org/allbinary/game/GameInfoData"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
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

