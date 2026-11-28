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
# package org.allbinary.logic.io.file.zip

require "java/lang/JavaClass"
# require "java/util/zip/ZipEntry"
# require "java/util/zip/ZipInputStream"
# require "java/util/zip/ZipOutputStream"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Zip

class ZipFileUtil
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_logic_io_file_zip_ZipFileUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_io_file_zip_ZipFileUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def create(outFilename, fileBasicArrayList)
        begin
            zipFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(outFilename)
            if zipFile.exists()
                zipFile.delete()
            end
            zipFile.createNewFile()
            outputStream = ZipOutputStream.new(::Org::Allbinary::Logic::Io::AbFileOutputStream.createFromAbFile(zipFile))
            streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            byteArray = (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            fileInputStream = nil
            size = fileBasicArrayList.size()
            current = 0
            (0...size).each do |i|
                file = fileBasicArrayList.get(i)
                if file.isDirectory()
                elsif file.isFile()
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.appendint(current)
                    stringBuffer.append(" Creating Zip File Entry: ")
                    stringBuffer.append(file.getPath())
                    @logUtil.putF(stringBuffer.to_s, self, "create()")
                    begin
                        fileInputStream = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(file)
                        outputStream.putNextEntry(ZipEntry.new(file.getPath()))
                        streamUtil.get(fileInputStream, outputStream, byteArray)
                        outputStream.closeEntry()
                        streamUtil.close(fileInputStream)
                    rescue StandardError => e
                        @logUtil.putF("Skipping File (Probably Local): " + (file.getPath()).to_s, self, "create()")
                    end
                end
                current += 1
            end
            streamUtil.close(outputStream)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "create", e)
        end
    end
    

    # throws Exception
    def unzip(path, zipFile, fileName)
        buffer = (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        inputStream = nil
        begin
            inputStream = ZipInputStream.new(::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(zipFile))
            zipEntry = nil
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            fileUtil = ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance()
            while ((zipEntry = inputStream.getNextEntry())) != nil
                entryName = zipEntry.getName()
                if zipEntry.isDirectory()
                else
                    entryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(path + entryName)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("ZipEntry Name: ")
                    stringBuffer.append(entryName)
                    stringBuffer.append(" isFile: ")
                    stringBuffer.appendboolean(entryFile.isFile())
                    stringBuffer.append(" isDirectory: ")
                    stringBuffer.appendboolean(entryFile.isDirectory())
                    stringBuffer.append(" getParent: ")
                    stringBuffer.append(entryFile.getParent())
                    @logUtil.putF(stringBuffer.to_s, self, "unzip")
                    dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(entryFile)
                    fileUtil.write(inputStream, dataOutputStream, buffer)
                end
                inputStream.closeEntry()
            end
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(inputStream)
        end
    end

    def self.instance()
        ZipFileUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ZipFileUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ZipFileUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ZipFileUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    ZipFileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

