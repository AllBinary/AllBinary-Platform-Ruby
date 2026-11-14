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
        FileItemUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileItemUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileItemUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileItemUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    FileItemUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

