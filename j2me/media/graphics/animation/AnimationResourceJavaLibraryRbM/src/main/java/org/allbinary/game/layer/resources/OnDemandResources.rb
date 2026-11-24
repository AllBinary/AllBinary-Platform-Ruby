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


module ::Org; module Allbinary; module Game; module Layer; module Resources

class OnDemandResources
    attr_accessor :logUtil

    def jfields_org_allbinary_game_layer_resources_OnDemandResources
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_resources_OnDemandResources
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

module ::Org; module Allbinary; module Animation; module Resource; autoload :BaseResourceAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:BaseResourceAnimationInterfaceFactoryInterfaceFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

begin
    OnDemandResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

