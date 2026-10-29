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
# package org.allbinary.logic.system.security.licensing

# require "java/io/InputStream"
# require "java/io/OutputStream"

class LicenseServerInitFileUtil
    attr_accessor :logUtil, :commonStrings, :NULL_OUTPUT_STREAM

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream()
    end

    def initialize
        initialize_fields
    end
    

    def init()
        begin
            filePath = LicenseInitInfoUtil.getInstance().INITFILENAME
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING)
            if FileFactory.getInstance().isFile(filePath)
                @logUtil.putF("Using Existing License File", self, @commonStrings.INIT)
            else
                self.write()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    

    def write()
        fileOutputStream = @NULL_OUTPUT_STREAM
        begin
            resourceUtil = ResourceUtil.getInstance()
            filePath = LicenseInitInfoUtil.getInstance().INITFILENAME
            inputStream = resourceUtil.getResourceAsStream(filePath)
            @logUtil.putF("Writing Default License File", self, @commonStrings.INIT)
            fileStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath)
            b = 0
            index = 0
            while true
                b = inputStream.read()
                if b == -1
                    break
                end
                fileOutputStream.write(b)
                index += 1
            end
            @logUtil.putF("Wrote Bytes: " + (index).to_s, self, @commonStrings.INIT)
            fileOutputStream.flush()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        ensure
            StreamUtil.getInstance().close(fileOutputStream)
        end
    end
end

require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/logic/io/file/SimpleFileUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

