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
# package org.allbinary.game.gd.resource


module ::Org; module Allbinary; module Game; module Gd; module Resource

class GDLazyResources
    attr_accessor :imageResourceWidthArray, :imageResourceHeightArray, :requiredResourcesBeforeLoadingArray

    def jfields_org_allbinary_game_gd_resource_GDLazyResources
        @imageResourceWidthArray = []
        @imageResourceHeightArray = []
        @requiredResourcesBeforeLoadingArray = []
    end

    def initialize
        jfields_org_allbinary_game_gd_resource_GDLazyResources
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        GDLazyResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GDLazyResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GDLazyResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GDLazyResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    GDLazyResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

