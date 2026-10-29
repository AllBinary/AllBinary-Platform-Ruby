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

# require "java/util/zip/ZipEntry"
# require "java/util/zip/ZipInputStream"
# require "java/util/zip/ZipOutputStream"

class ZipFileUtil
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ZipFileUtil.instance
    end
    

    def create(outFilename, fileBasicArrayList)
        begin
            zipFile = AbFile.createAbFile(outFilename)
            if zipFile.exists()
                zipFile.delete()
            end
            zipFile.createNewFile()
            outputStream = ZipOutputStream.new(AbFileOutputStream.createFromAbFile(zipFile))
            streamUtil = StreamUtil.getInstance()
            stringBuffer = StringMaker.new()
            byteArray = Array.new(16384, 0)
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
                        fileInputStream = AbFileInputStream.new(file)
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
        buffer = Array.new(16384, 0)
        inputStream = nil
        begin
            inputStream = ZipInputStream.new(AbFileInputStream.new(zipFile))
            zipEntry = nil
            stringBuffer = StringMaker.new()
            fileUtil = FileUtil.getInstance()
            while ((zipEntry = inputStream.getNextEntry())) != nil
                entryName = zipEntry.getName()
                if zipEntry.isDirectory()
                else
                    entryFile = AbFile.createAbFile(path + entryName)
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
                    dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(entryFile)
                    fileUtil.write(inputStream, dataOutputStream, buffer)
                end
                inputStream.closeEntry()
            end
        ensure
            StreamUtil.getInstance().close(inputStream)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

class ZipFileUtil
    @@instance = ZipFileUtil.new()
end

