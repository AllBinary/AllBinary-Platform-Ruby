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

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresResultsListener"

module ::Org; module Allbinary; module Game; module Score; module Displayable

class HighScoreUtil
    include ::Org::Allbinary::Game::Score::HighScoresResultsListener
    attr_accessor :logUtil, :commonStrings, :highScoresFactoryInterface, :highScoresArray, :highScore, :abeClientInformation, :gameInfo, :highScoresHelper, :firstTime

    def jfields_org_allbinary_game_score_displayable_HighScoreUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @highScoresFactoryInterface = nil unless instance_variable_defined?(:@highScoresFactoryInterface)
        @highScoresArray = nil unless instance_variable_defined?(:@highScoresArray)
        @highScore = nil unless instance_variable_defined?(:@highScore)
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @gameInfo = nil unless instance_variable_defined?(:@gameInfo)
        @highScoresHelper = nil unless instance_variable_defined?(:@highScoresHelper)
        @firstTime = true
    end
    

    def initialize(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        jfields_org_allbinary_game_score_displayable_HighScoreUtil
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
    java_overload :setHighScoresArray, 1
    

    def update(name)
        ::Org::Allbinary::Game::Score::HighScoreNamePersistanceSingleton.getInstance().save(@abeClientInformation, @gameInfo, name)
        @highScore.setName(name)
    end
    java_overload :update, 1
    

    def saveHighScore()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@highScore)).to_s, self, "saveHighScore")
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
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Added/Adding Score: ").append(highScoresAsString).to_s, self, "saveHighScore")
        end
        @highScoresHelper.setHighScoresArray(@highScoresArray)
    end
    java_overload :saveHighScore, 0
    

    def submit(myCanvas)
        commandListener = myCanvas.getCustomCommandListener()
        commandListener.commandAction(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND, myCanvas)
    end
    java_overload :submit, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SUBMIT_TEXTBOX_COMMAND, ::Javax::Microedition::Lcdui::Command.new("Submit", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoreNamePersistanceSingleton, "org/allbinary/game/score/HighScoreNamePersistanceSingleton" unless const_defined?(:HighScoreNamePersistanceSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    HighScoreUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

