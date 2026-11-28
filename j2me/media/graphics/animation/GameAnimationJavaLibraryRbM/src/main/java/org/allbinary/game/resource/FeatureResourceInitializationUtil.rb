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
# package org.allbinary.game.resource


module ::Org; module Allbinary; module Game; module Resource

class FeatureResourceInitializationUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_game_resource_FeatureResourceInitializationUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_resource_FeatureResourceInitializationUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def init(level)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.INIT)
        featuredResourceFactory = ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredResourceFactory.init(level)
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level)
    end

    def self.instance()
        FeatureResourceInitializationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FeatureResourceInitializationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FeatureResourceInitializationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FeatureResourceInitializationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :FeaturedResourceFactory, "org/allbinary/game/resource/FeaturedResourceFactory" unless const_defined?(:FeaturedResourceFactory, false)
autoload :FeaturedResourceRelativeRelationshipFactory, "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory" unless const_defined?(:FeaturedResourceRelativeRelationshipFactory, false)

begin
    FeatureResourceInitializationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

