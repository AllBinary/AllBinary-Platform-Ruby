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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/Item"
# require "javax/microedition/lcdui/ItemCommandListener"

class GameFeatureItemCommandListener
    include ItemCommandListener
    attr_accessor :logUtil, :gameOptionsForm

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameOptionsForm = nil
    end
    

    def initialize(gameOptionsForm)
        initialize_fields
        @gameOptionsForm = gameOptionsForm
    end
    

    def commandAction(command, item)
        begin
            itemLabel = item.getLabel()
            @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).to_s, self, MidletStrings.getInstance().COMMAND_ACTION)
            if item.is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().change(@gameOptionsForm, item)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, MidletStrings.getInstance().COMMAND_ACTION, e)
        end
    end
end

require "org/allbinary/game/configuration/GameConfigurationGauge"
require "org/allbinary/game/configuration/GameConfigurationUtil"
require "org/allbinary/game/configuration/GameOptionsForm"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/midlet/MidletStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"

