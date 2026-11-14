#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen


class WebCommandProcessor
    attr_accessor :logUtil, :aboutCommandProcessor, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @aboutCommandProcessor = AboutCommandProcessor.getInstance()
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return WebCommandProcessor.instance
    end
    

    def process(midletCommandListener, command, canvas)
        begin
            @list.removeAt(0)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.PROCESS, e)
        end
    end

    def self.instance()
        WebCommandProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        WebCommandProcessor.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = WebCommandProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WebCommandProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :AboutCommandProcessor, "org/allbinary/graphics/displayable/screen/AboutCommandProcessor"

begin
    WebCommandProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

