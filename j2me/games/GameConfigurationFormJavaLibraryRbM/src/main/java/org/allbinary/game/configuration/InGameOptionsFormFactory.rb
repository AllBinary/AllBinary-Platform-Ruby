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
        InGameOptionsFormFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InGameOptionsFormFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InGameOptionsFormFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm"
autoload :Init, "org/allbinary/init/Init"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :InGameOptionsForm, "org/allbinary/game/configuration/InGameOptionsForm"

begin
    InGameOptionsFormFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

