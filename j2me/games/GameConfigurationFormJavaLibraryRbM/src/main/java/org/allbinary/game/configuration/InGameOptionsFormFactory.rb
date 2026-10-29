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
# package org.allbinary.game.configuration

# require "javax/microedition/lcdui/CommandListener"

class InGameOptionsFormFactory
    attr_accessor :logUtil, :SINGLETON

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SINGLETON = CommandForm.getNullCommandForm()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if InGameOptionsFormFactory.instance == NullUtil.getInstance().NULL_OBJECT
            InGameOptionsFormFactory.instance = InGameOptionsFormFactory.new()
        end
        return InGameOptionsFormFactory.instance
    end
    

    def init(commandListener, initInterface, title, backgrounBasicColor, foregroundBasicColor)
        begin
            if @SINGLETON == CommandForm.getNullCommandForm()
                initInterface.init()
                @SINGLETON = InGameOptionsForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end
    

    def get()
        return @SINGLETON
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/screen/CommandForm"
require "org/allbinary/init/Init"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/configuration/InGameOptionsForm"

class InGameOptionsFormFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

