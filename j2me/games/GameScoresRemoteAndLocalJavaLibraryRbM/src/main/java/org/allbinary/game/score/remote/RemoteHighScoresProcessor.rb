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
require "java/lang/JavaOverload"
require "org/allbinary/game/score/remote/RemoteHighScoresProcessorInterface"

module ::Org; module Allbinary; module Game; module Score; module Remote

class RemoteHighScoresProcessor
    include RemoteHighScoresProcessorInterface
    attr_accessor :logUtil, :commonStrings, :noCrypt

    def jfields_org_allbinary_game_score_remote_RemoteHighScoresProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @noCrypt = ::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::NoCrypt.new()
    end
    

    def initialize()
        jfields_org_allbinary_game_score_remote_RemoteHighScoresProcessor
    end
    

    # throws Exception
    def process(remoteHighScores, abeClientInformation, gameInfo)
        java_monitor.synchronize do
        @logUtil.putF("Begin Remote HighScores Retrieval", self, @commonStrings.PROCESS)
        gameInfoData = ::Org::Allbinary::Game::GameInfoData.getInstance()
        hashtable = abeClientInformation.toHashtable()
        ::Org::Allbinary::Util::HashtableUtil.getInstance().putAll(gameInfo.toHashtable(), hashtable)
        hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().to_s)
        hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().to_s)
        displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        hashtable.put(displayInfoSingleton.ORIENTATION, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()))
        hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().to_s)
        if ::Org::Allbinary::Logic::Communication::Xmlrpc::XmlRpcAbeClient.isOnline
            resultHashtable = XmlRpcRemoteHighScoresClient.new(abeClientInformation, "highscoresservicessl.php", "HighScoresService.process").get(hashtable, @noCrypt)
            remoteHighScores.update(resultHashtable)
        end
        end
    end
    java_overload :process, 3
end

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfoData, "org/allbinary/game/GameInfoData" unless const_defined?(:GameInfoData, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Xmlrpc; autoload :XmlRpcAbeClient, "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient" unless const_defined?(:XmlRpcAbeClient, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :NoCrypt, "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt" unless const_defined?(:NoCrypt, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
autoload :RemoteHighScores, "org/allbinary/game/score/remote/RemoteHighScores" unless const_defined?(:RemoteHighScores, false)
autoload :RemoteHighScoresData, "org/allbinary/game/score/remote/RemoteHighScoresData" unless const_defined?(:RemoteHighScoresData, false)
autoload :XmlRpcRemoteHighScoresClient, "org/allbinary/game/score/remote/XmlRpcRemoteHighScoresClient" unless const_defined?(:XmlRpcRemoteHighScoresClient, false)

end; end; end; end; end

