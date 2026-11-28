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
# package org.allbinary


module ::Org; module Allbinary

class PostGameCommandFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def addCommands(canvas)
        operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        if !operatingSystemInterface.isOverScan()
            canvas.addCommand(gameCommandsFactory.TOGGLE_KEYBOARD)
        end
        ::Org::Allbinary::Game::Configuration::Feature::MultiPlayerGameFeatureFactory.getInstance().addCommands(canvas)
    end

    def self.instance()
        PostGameCommandFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PostGameCommandFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PostGameCommandFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PostGameCommandFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MultiPlayerGameFeatureFactory, "org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory" unless const_defined?(:MultiPlayerGameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end

begin
    PostGameCommandFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

