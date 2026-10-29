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
# package org.allbinary.game.part


class MakeCountedPartsSingletonArrayFactory
    attr_accessor :logUtil, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @list = BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MakeCountedPartsSingletonArrayFactory.instance
    end
    

    # throws Exception
    def getUpdated(partInterfaceArray)
        @list = BasicArrayListD.new()
        (0...partInterfaceArray.length).each do |index|
            @list.add(partInterfaceArray[index])
        end
        countedBasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        layerInterfaceFactoryInterface = nil
        size = countedBasicArrayList.size()
        (0...size).each do |index|
            layerInterfaceFactoryInterface = countedBasicArrayList.objectArray[index]
            @list.add(CountedLayerInterfaceFactoryPart.new(0, layerInterfaceFactoryInterface))
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append("Total Parts: ")
        stringBuffer.appendint(@list.size())
        stringBuffer.append(" Counted: ")
        stringBuffer.appendint(countedBasicArrayList.size())
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.GET_INSTANCE)
        newPartInterfaceArray = Array.new(@list.size(), nil)
        newSize = newPartInterfaceArray.length
        (0...newSize).each do |index|
            newPartInterfaceArray[index] = @list.get(index)
        end
        return newPartInterfaceArray
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
require "org/allbinary/game/part/PartInterface"

class MakeCountedPartsSingletonArrayFactory
    @@instance = MakeCountedPartsSingletonArrayFactory.new()
end

