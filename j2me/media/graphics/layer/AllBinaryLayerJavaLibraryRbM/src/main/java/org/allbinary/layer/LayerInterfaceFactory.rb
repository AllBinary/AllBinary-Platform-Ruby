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
# package org.allbinary.layer


class LayerInterfaceFactory
    attr_accessor :logUtil, :list, :HASHTABLE_LABEL

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @list = BasicArrayListUtil.getInstance().getImmutableInstance()
        @HASHTABLE_LABEL = "Hashtable: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LayerInterfaceFactory::SINGLETON
    end
    

    def init()
        @list = BasicArrayListD.new()
    end
    

    # throws Exception
    def getNexInstance(hashtable, x, y, z)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(StringMaker.new().append(@HASHTABLE_LABEL).append(StringUtil.getInstance().toString(hashtable)).to_s, self, commonStrings.GET_INSTANCE)
        typeInteger = hashtable.get(Layer::ID)
        layerInterfaceFactoryInterface = @list.objectArray[typeInteger.to_i - 1]
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z)
    end
    

    def add(layerInterfaceFactoryInterface)
        @list.add(layerInterfaceFactoryInterface)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, LayerInterfaceFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :Layer, "org/allbinary/layer/Layer"
autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface"

begin
    LayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

