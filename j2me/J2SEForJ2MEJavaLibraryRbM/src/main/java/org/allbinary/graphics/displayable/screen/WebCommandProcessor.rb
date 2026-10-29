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

# require "java/awt/Desktop"
# require "java/net/URI"
# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"

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
            if Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop::Action.BROWSE)
                Desktop.getDesktop().browse(URI.new(@list.removeAt(0)))
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.PROCESS, e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/displayable/screen/AboutCommandProcessor"

class WebCommandProcessor
    @@instance = WebCommandProcessor.new()
end

