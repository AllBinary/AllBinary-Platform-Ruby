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
# package org.allbinary.ag.game.vector


class HealthVectorData

    def self.points()
        HealthVectorData.java_static_fields unless @java_static_fields_started
        return defined?(@@points) ? @@points : nil
    end

    def self.points=(value)
        HealthVectorData.java_static_fields unless @java_static_fields_started
        @@points = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@points = [[[2, 1], [3, 2], [3, 2], [4, 1], [4, 1], [5, 1], [5, 1], [6, 2], [6, 2], [6, 3], [6, 3], [3, 6], [3, 6], [0, 3], [0, 3], [0, 2], [0, 2], [1, 1], [1, 1], [2, 1], [1000, 1000]]]
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HealthVectorData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    HealthVectorData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

