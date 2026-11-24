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


module ::Org; module Allbinary; module Game; module Configuration

class InGameOptionsFormFactory
    attr_accessor :logUtil, :SINGLETON

    def jfields_org_allbinary_game_configuration_InGameOptionsFormFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @SINGLETON = ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm.getNullCommandForm()
    end

    def initialize
        jfields_org_allbinary_game_configuration_InGameOptionsFormFactory
    end
    

    def self.getInstance()
        if InGameOptionsFormFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            InGameOptionsFormFactory.instance = InGameOptionsFormFactory.new()
        end
        return InGameOptionsFormFactory.instance
    end
    

    def init(commandListener, initInterface, title, backgrounBasicColor, foregroundBasicColor)
        begin
            if @SINGLETON == ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm.getNullCommandForm()
                initInterface.init()
                @SINGLETON = InGameOptionsForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm" unless const_defined?(:CommandForm, false); end; end; end; end; end
module ::Org; module Allbinary; module Init; autoload :Init, "org/allbinary/init/Init" unless const_defined?(:Init, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :InGameOptionsForm, "org/allbinary/game/configuration/InGameOptionsForm" unless const_defined?(:InGameOptionsForm, false)

begin
    InGameOptionsFormFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

