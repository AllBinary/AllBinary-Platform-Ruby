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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/layer/Layer"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/EnumerationUtil"

class LevelLayersFinder
    @@instance = LevelLayersFinder.new()
end

