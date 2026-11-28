# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.apache.commons.fileupload

require "java/lang/JavaClass"

module ::Org; module Apache; module Commons; module Fileupload

class FileItemUtil
    attr_accessor :logUtil, :DEFAULT_CHARSET

    def jfields_org_apache_commons_fileupload_FileItemUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @DEFAULT_CHARSET = "ISO-8859-1"
    end

    def initialize
        jfields_org_apache_commons_fileupload_FileItemUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def getString_j1_1(byteArray)
        return byteArray, @DEFAULT_CHARSET.pack("c*").force_encoding("UTF-8")
    end
    

    # throws Exception
    def getString_j1_2(fileItem)
        return String.new(self.getBytes(fileItem), @DEFAULT_CHARSET)
    end

    def getString(*java_overload_args)
        return getString_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getString takes #{java_overload_args.length} arguments"
    end

    def getString_j1(*java_overload_args)
        return getString_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].instance_variable_get(:@java_component) || :B) == :B && (java_overload_args[0].empty? || java_overload_args[0][0].is_a?(::Integer))))
        return getString_j1_2(*java_overload_args)
    end
    

    # throws Exception
    def getBytes(fileItem)
        streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
        inputStream = nil
        outputStream = nil
        begin
            inputStream = fileItem.openStream()
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            if fileItem.isFormField()
                @logUtil.putF("FileItemStream FieldName: " + (fileItem.getFieldName()).to_s, self, "write()")
            else
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Uploaded File FieldName: ")
                stringBuffer.append(fileItem.getFieldName())
                stringBuffer.append(" name = ")
                stringBuffer.append(fileItem.getName())
                @logUtil.putF(stringBuffer.to_s, self, "write()")
            end
            outputStream = streamUtil.get(inputStream, outputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            return outputStream.toByteArray()
        ensure
            streamUtil.close(outputStream)
            streamUtil.close(inputStream)
        end
    end
    

    # throws Exception
    def write(fileItem, file)
        fileItem.write(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file))
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

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    FileItemUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

