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
# package org.allbinary.game.configuration.feature


class Feature
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(name)
        initialize_fields
        @name = name
        Feature.add(name, self)
        ChangedGameFeatureListener.getInstance().add(self)
    end
    

    def self.getInstance(name)
        return Feature.hashtable.get(name)
    end
    

    def self.add(name, gameFeature)
        Feature.hashtable.put(name, gameFeature)
    end
    

    def toString()
        return self.getName()
    end
    alias_method :to_s, :toString
    

    def getName()
        return @name
    end

    def self.hashtable()
        Feature.java_static_fields unless @java_static_fields_started
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        Feature.java_static_fields unless @java_static_fields_started
        @@hashtable = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashtable = StdUtil.getInstance().createHashtable()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Feature"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    Feature.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

