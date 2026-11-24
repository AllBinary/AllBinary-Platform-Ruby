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
    attr_accessor :logUtil, :newFile, :id

    def jfields_org_allbinary_data_generator_UniqueIdGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @newFile = nil unless instance_variable_defined?(:@newFile)
        @id = 0
    end
    

    def initialize()
        jfields_org_allbinary_data_generator_UniqueIdGenerator
    end
    

    def initialize(value)
        begin
            @newFile.createNewFile()
            idData = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(@newFile)
            idData.writeLong(value)
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
        @newFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(filePathName)
        end
    end
    java_overload :setFile, 2
    

    # throws IOException
    def getNext()
        java_monitor.synchronize do
        idData = nil
        idOutData = nil
        begin
            idFile = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(@newFile)
            idData = ::Org::Allbinary::Logic::Io::AbDataInputStream.new(idFile)
            @id = idData.readLong()
            idOutFile = ::Org::Allbinary::Logic::Io::AbFileOutputStream.createFromAbFile(@newFile)
            idOutData = ::Org::Allbinary::Logic::Io::AbDataOutputStream.new(idOutFile)
            idOutData.writeLong(@id + 1)
            idLong = @id
            return idLong.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getNext", e)
            end
            return "Error"
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(idData)
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(idOutData)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream" unless const_defined?(:AbDataInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    UniqueIdGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

