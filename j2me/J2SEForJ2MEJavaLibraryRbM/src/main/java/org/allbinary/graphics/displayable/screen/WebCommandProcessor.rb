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

module ::Org; module Allbinary; module Graphics; module Displayable; module Screen

class WebCommandProcessor
    attr_accessor :logUtil, :aboutCommandProcessor, :list

    def jfields_org_allbinary_graphics_displayable_screen_WebCommandProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @aboutCommandProcessor = AboutCommandProcessor.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_graphics_displayable_screen_WebCommandProcessor
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def process(midletCommandListener, command, canvas)
        begin
            if Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop::Action.BROWSE)
                Desktop.getDesktop().browse(URI.new(@list.removeAt(0)))
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AboutCommandProcessor, "org/allbinary/graphics/displayable/screen/AboutCommandProcessor" unless const_defined?(:AboutCommandProcessor, false)

begin
    WebCommandProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

