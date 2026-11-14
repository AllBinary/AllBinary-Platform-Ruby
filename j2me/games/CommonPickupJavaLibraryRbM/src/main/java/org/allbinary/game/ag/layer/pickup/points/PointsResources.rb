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
# package org.allbinary.game.ag.layer.pickup.points


class PointsResources
    attr_accessor :RESOURCE, :RESOURCE_2, :RESOURCE_3, :RESOURCE_4

    def initialize_fields
        @RESOURCE = "points_drop_20_by_20.png"
        @RESOURCE_2 = "points_2_drop_20_by_20.png"
        @RESOURCE_3 = "points_3_drop_20_by_20.png"
        @RESOURCE_4 = "points_4_drop_20_by_20.png"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return PointsResources::SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, PointsResources.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointsResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

begin
    PointsResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

