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
# package org.allbinary.game.layer


class LevelLayersFinder
    attr_accessor :enumerationUtil

    def initialize_fields
        @enumerationUtil = EnumerationUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LevelLayersFinder.instance
    end
    

    def get(hashtable)
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        list = BasicArrayListD.new()
        enumeration = hashtable.keys()
        layerHashtableCanBeNull = nil
        integerCanBeNull = nil
        cachedIntegerCanBeNull = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            layerHashtableCanBeNull = hashtable.get(@enumerationUtil.nextElement(enumeration))
            integerCanBeNull = layerHashtableCanBeNull.get(Layer::ID)
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.to_i)
            if !list.contains(cachedIntegerCanBeNull)
                list.add(cachedIntegerCanBeNull)
            end
        end
        return list
    end

    def self.instance()
        LevelLayersFinder.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LevelLayersFinder.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LevelLayersFinder.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LevelLayersFinder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Enumeration, "java/util/Enumeration"
autoload :Layer, "org/allbinary/layer/Layer"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"

begin
    LevelLayersFinder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

