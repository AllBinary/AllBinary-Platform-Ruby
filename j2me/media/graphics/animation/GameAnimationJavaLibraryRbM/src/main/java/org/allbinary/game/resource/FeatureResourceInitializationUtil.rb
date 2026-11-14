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


class FeatureResourceInitializationUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FeatureResourceInitializationUtil.instance
    end
    

    # throws Exception
    def init(level)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.INIT)
        featuredResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
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

autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :FeaturedResourceFactory, "org/allbinary/game/resource/FeaturedResourceFactory"
autoload :FeaturedResourceRelativeRelationshipFactory, "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory"

begin
    FeatureResourceInitializationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

