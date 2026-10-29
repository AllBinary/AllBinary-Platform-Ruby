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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/resource/FeaturedResourceFactory"
require "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory"

class FeatureResourceInitializationUtil
    @@instance = FeatureResourceInitializationUtil.new()
end

