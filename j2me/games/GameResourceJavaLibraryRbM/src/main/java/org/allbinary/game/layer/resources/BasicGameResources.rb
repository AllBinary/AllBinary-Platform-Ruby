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
# package org.allbinary.game.layer.resources

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Layer; module Resources

class BasicGameResources
    attr_accessor :logUtil, :RESOURCE, :RESOURCE_DESTROY

    def jfields_org_allbinary_game_layer_resources_BasicGameResources
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @RESOURCE = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_DESTROY = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_resources_BasicGameResources
    end
    

    def init(_ROOT, _SIZE)
        begin
            scale = ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().SCALE.getValue().to_i
            if scale > 1 && scale - 1 < _SIZE.length
                self.append(_ROOT, _SIZE[scale - 1])
            else
                raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Invalid Value: ").appendint(scale).to_s)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        _DESTROY = "_destroy"
        string = self.getString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE = BasicGameResources.stringBuffer.to_s
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(_DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE_DESTROY = BasicGameResources.stringBuffer.to_s
    end
    

    # throws Exception
    def getString()
        return GameGraphicsResourceUtil.getInstance().getName()
    end

    def self.stringBuffer()
        BasicGameResources.java_static_fields unless @java_static_fields_started
        return defined?(@@stringBuffer) ? @@stringBuffer : nil
    end

    def self.stringBuffer=(value)
        BasicGameResources.java_static_fields unless @java_static_fields_started
        @@stringBuffer = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGameResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameGraphicsResourceUtil, "org/allbinary/game/layer/resources/GameGraphicsResourceUtil" unless const_defined?(:GameGraphicsResourceUtil, false)

begin
    BasicGameResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

