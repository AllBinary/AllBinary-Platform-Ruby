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
# package org.allbinary.game.configuration.feature

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/ItemCommandListener"

module ::Org; module Allbinary; module Game; module Configuration; module Feature

class GameFeatureItemCommandListener
    include ::Javax::Microedition::Lcdui::ItemCommandListener
    attr_accessor :logUtil, :gameOptionsForm

    def jfields_org_allbinary_game_configuration_feature_GameFeatureItemCommandListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameOptionsForm = nil unless instance_variable_defined?(:@gameOptionsForm)
    end
    

    def initialize(gameOptionsForm)
        jfields_org_allbinary_game_configuration_feature_GameFeatureItemCommandListener
        @gameOptionsForm = gameOptionsForm
    end
    

    def commandAction(command, item)
        begin
            itemLabel = item.getLabel()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).to_s, self, ::Org::Allbinary::Midlet::MidletStrings.getInstance().COMMAND_ACTION)
            if item.is_a?(::Org::Allbinary::Game::Configuration::GameConfigurationGauge)
                ::Org::Allbinary::Game::Configuration::GameConfigurationUtil.getInstance().change(@gameOptionsForm, item)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, ::Org::Allbinary::Midlet::MidletStrings.getInstance().COMMAND_ACTION, e)
        end
    end
    java_overload :commandAction, 2
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge" unless const_defined?(:GameConfigurationGauge, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm" unless const_defined?(:GameOptionsForm, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Midlet; autoload :MidletStrings, "org/allbinary/midlet/MidletStrings" unless const_defined?(:MidletStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

