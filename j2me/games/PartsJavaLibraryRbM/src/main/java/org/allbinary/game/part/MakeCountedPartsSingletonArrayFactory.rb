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
        MakeCountedPartsSingletonArrayFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MakeCountedPartsSingletonArrayFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MakeCountedPartsSingletonArrayFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MakeCountedPartsSingletonArrayFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :CountedPickedUpLayerInterfaceFactoryPool, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
autoload :PartInterface, "org/allbinary/game/part/PartInterface"

begin
    MakeCountedPartsSingletonArrayFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

