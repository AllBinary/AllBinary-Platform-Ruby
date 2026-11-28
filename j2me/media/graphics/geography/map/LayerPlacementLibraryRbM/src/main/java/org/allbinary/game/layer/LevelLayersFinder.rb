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


module ::Org; module Allbinary; module Game; module Layer

class LevelLayersFinder
    attr_accessor :enumerationUtil

    def jfields_org_allbinary_game_layer_LevelLayersFinder
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_layer_LevelLayersFinder
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def get(hashtable)
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        enumeration = hashtable.keys()
        layerHashtableCanBeNull = nil
        integerCanBeNull = nil
        cachedIntegerCanBeNull = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            layerHashtableCanBeNull = hashtable.get(@enumerationUtil.nextElement(enumeration))
            integerCanBeNull = layerHashtableCanBeNull.get(::Org::Allbinary::Layer::Layer::ID)
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

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end

begin
    LevelLayersFinder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

