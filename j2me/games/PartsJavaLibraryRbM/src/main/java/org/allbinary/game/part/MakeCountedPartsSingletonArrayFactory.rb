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


module ::Org; module Allbinary; module Game; module Part

class MakeCountedPartsSingletonArrayFactory
    attr_accessor :logUtil, :list

    def jfields_org_allbinary_game_part_MakeCountedPartsSingletonArrayFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def initialize
        jfields_org_allbinary_game_part_MakeCountedPartsSingletonArrayFactory
    end
    

    def self.getInstance()
        return MakeCountedPartsSingletonArrayFactory.instance
    end
    

    # throws Exception
    def getUpdated(partInterfaceArray)
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        (0...partInterfaceArray.length).each do |index|
            @list.add(partInterfaceArray[index])
        end
        countedBasicArrayList = ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        layerInterfaceFactoryInterface = nil
        size = countedBasicArrayList.size()
        (0...size).each do |index|
            layerInterfaceFactoryInterface = countedBasicArrayList.objectArray[index]
            @list.add(CountedLayerInterfaceFactoryPart.new(0, layerInterfaceFactoryInterface))
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Total Parts: ")
        stringBuffer.appendint(@list.size())
        stringBuffer.append(" Counted: ")
        stringBuffer.appendint(countedBasicArrayList.size())
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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

module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :CountedPickedUpLayerInterfaceFactoryPool, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool" unless const_defined?(:CountedPickedUpLayerInterfaceFactoryPool, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart" unless const_defined?(:CountedLayerInterfaceFactoryPart, false)
autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false)

begin
    MakeCountedPartsSingletonArrayFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

