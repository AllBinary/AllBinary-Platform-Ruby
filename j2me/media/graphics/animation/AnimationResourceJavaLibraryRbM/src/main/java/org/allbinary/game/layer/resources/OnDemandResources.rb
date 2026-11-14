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


class OnDemandResources
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def waitFor()
    end
    

    # throws Exception
    def init()
    end
    

    # throws Exception
    def initAt(imageCache, resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
        return 0
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ON_DEMAND_RESOURCES, OnDemandResources.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OnDemandResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ON_DEMAND_RESOURCES].include?(name)
        end
        super
    end
end

autoload :BaseResourceAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"
autoload :ImageCache, "org/allbinary/image/ImageCache"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"

begin
    OnDemandResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

