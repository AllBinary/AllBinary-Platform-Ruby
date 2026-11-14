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
# package org.allbinary.game.configuration.event

require "org/allbinary/game/configuration/event/BaseChangedGameFeatureListener"

class ChangedGameFeatureListener < BaseChangedGameFeatureListener
    

    def self.getInstance()
        return ChangedGameFeatureListener.gameFeatureListener
    end
    

    def isChangedGameConfiguration(gameConfiguration)
        return @list.contains(gameConfiguration)
    end

    def self.gameFeatureListener()
        ChangedGameFeatureListener.java_static_fields unless @java_static_fields_started
        return defined?(@@gameFeatureListener) ? @@gameFeatureListener : nil
    end

    def self.gameFeatureListener=(value)
        ChangedGameFeatureListener.java_static_fields unless @java_static_fields_started
        @@gameFeatureListener = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@gameFeatureListener = ChangedGameFeatureListener.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ChangedGameFeatureListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration"

begin
    ChangedGameFeatureListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

