# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.apache.commons.fileupload

# require "java/io/ByteArrayOutputStream"
# require "java/io/InputStream"

class FileItemUtil
    attr_accessor :logUtil, :DEFAULT_CHARSET

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @DEFAULT_CHARSET = "ISO-8859-1"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FileItemUtil.instance
    end
    

    # throws Exception
    def getString(byteArray)
        return byteArray, @DEFAULT_CHARSET.pack("c*").force_encoding("UTF-8")
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getString(fileItem)
        return String.new(self.getBytes(fileItem), @DEFAULT_CHARSET)
    end
    

    # throws Exception
    def getBytes(fileItem)
        streamUtil = StreamUtil.getInstance()
        inputStream = nil
        outputStream = nil
        begin
            inputStream = fileItem.openStream()
            outputStream = ByteArrayOutputStream.new()
            if fileItem.isFormField()
                @logUtil.putF("FileItemStream FieldName: " + (fileItem.getFieldName()).to_s, self, "write()")
            else
                stringBuffer = StringMaker.new()
                stringBuffer.append("Uploaded File FieldName: ")
                stringBuffer.append(fileItem.getFieldName())
                stringBuffer.append(" name = ")
                stringBuffer.append(fileItem.getName())
                @logUtil.putF(stringBuffer.to_s, self, "write()")
            end
            outputStream = streamUtil.get(inputStream, outputStream, Array.new(16384, 0))
            return outputStream.toByteArray()
        ensure
            streamUtil.close(outputStream)
            streamUtil.close(inputStream)
        end
    end
    

    # throws Exception
    def write(fileItem, file)
        fileItem.write(AbFileNativeUtil.get(file))
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"
require "org/allbinary/logic/string/StringMaker"

class FileItemUtil
    @@instance = FileItemUtil.new()
end

