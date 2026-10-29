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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/LayerInterfaceFactoryInterface"

class LayerInterfaceFactory
    SINGLETON = LayerInterfaceFactory.new()
end

