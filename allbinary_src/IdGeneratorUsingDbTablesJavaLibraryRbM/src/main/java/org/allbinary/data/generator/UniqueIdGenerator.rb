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
# package org.allbinary.data.generator

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "java/io/IOException"
require "org/allbinary/data/generator/IdGeneratorInterface"

module ::Org; module Allbinary; module DataPackage; module Generator

class UniqueIdGenerator
    include IdGeneratorInterface
    attr_accessor :logUtil, :idGeneratorEntity, :name

    def jfields_org_allbinary_data_generator_UniqueIdGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @idGeneratorEntity = nil unless instance_variable_defined?(:@idGeneratorEntity)
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize()
        jfields_org_allbinary_data_generator_UniqueIdGenerator
        @idGeneratorEntity = ::Org::Allbinary::DataPackage::Tables::Generator::IdGeneratorEntityFactory.getInstance()
    end
    

    def initialize(value)
        begin
            vector = ::Org::Allbinary::Util::BasicArrayListD.new()
            vector.add(@name)
            vector.add((value).to_s.to_s)
            @idGeneratorEntity.insert(vector)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "initialize", e)
            end
        end
    end
    java_overload :initialize, 1
    

    # throws Exception
    def setFile(filePathName, name)
        java_monitor.synchronize do
        @name = name
        end
    end
    java_overload :setFile, 2
    

    # throws IOException
    def getNext()
        java_monitor.synchronize do
        begin
            idLong = @idGeneratorEntity.get(@name)
            newValue = (idLong.to_i + 1).to_s
            @idGeneratorEntity.update(@name, newValue)
            return idLong.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getNext", e)
            end
            return "Error"
        end
        end
    end
    java_overload :getNext, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:EXT, ".unq")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UniqueIdGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:EXT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Generator; autoload :IdGeneratorEntity, "org/allbinary/data/tables/generator/IdGeneratorEntity" unless const_defined?(:IdGeneratorEntity, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Generator; autoload :IdGeneratorEntityFactory, "org/allbinary/data/tables/generator/IdGeneratorEntityFactory" unless const_defined?(:IdGeneratorEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    UniqueIdGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

