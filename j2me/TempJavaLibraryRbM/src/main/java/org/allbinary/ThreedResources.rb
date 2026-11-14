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


class ThreedResources
    

    def self.getThreedResources()
        return ThreedResources.threedResources
    end
    

    def add()
    end

    def self.threedResources()
        ThreedResources.java_static_fields unless @java_static_fields_started
        return defined?(@@threedResources) ? @@threedResources : nil
    end

    def self.threedResources=(value)
        ThreedResources.java_static_fields unless @java_static_fields_started
        @@threedResources = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@threedResources = ThreedResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreedResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ThreedResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

