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
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class PlatformInputMappingFactory
    attr_accessor :logUtil, :inputToGameKeyMapping

    def jfields_org_allbinary_game_input_PlatformInputMappingFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::Mapping::PersistentInputMapping.getNullInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_PlatformInputMappingFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getPersistentInputMappingInstance()
        begin
            if @inputToGameKeyMapping == ::Org::Allbinary::Game::Input::Mapping::PersistentInputMapping.getNullInstance()
                @inputToGameKeyMapping = MotionLaptopGameInputMapping.new()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @inputToGameKeyMapping
    end

    def self.instance()
        PlatformInputMappingFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlatformInputMappingFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PlatformInputMappingFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformInputMappingFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :PersistentInputMapping, "org/allbinary/game/input/mapping/PersistentInputMapping" unless const_defined?(:PersistentInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MotionLaptopGameInputMapping, "org/allbinary/game/input/MotionLaptopGameInputMapping" unless const_defined?(:MotionLaptopGameInputMapping, false)

begin
    PlatformInputMappingFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

