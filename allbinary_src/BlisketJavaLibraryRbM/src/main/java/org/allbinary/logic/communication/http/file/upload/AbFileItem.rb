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
# package org.allbinary.logic.communication.http.file.upload

require "java/lang/JavaOverload"
# require "java/io/File"
# require "java/io/IOException"
# require "java/io/UnsupportedEncodingException"
require "org/apache/commons/fileupload/FileItem"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class AbFileItem
    include ::Org::Apache::Commons::Fileupload::FileItem
    attr_accessor :logUtil, :commonStrings, :name, :fieldName, :byteArray

    def jfields_org_allbinary_logic_communication_http_file_upload_AbFileItem
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @fieldName = nil unless instance_variable_defined?(:@fieldName)
        @byteArray = nil unless instance_variable_defined?(:@byteArray)
    end
    

    def initialize(name, fieldName, byteArray)
        jfields_org_allbinary_logic_communication_http_file_upload_AbFileItem
        @name = name
        @fieldName = fieldName
        @byteArray = byteArray
    end
    

    # throws IOException
    def getInputStream()
        raise IOError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getInputStream, 0
    

    def getContentType()
        return nil
    end
    java_overload :getContentType, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def isInMemory()
        return true
    end
    java_overload :isInMemory, 0
    

    def getSize()
        return @byteArray.length
    end
    java_overload :getSize, 0
    

    def get()
        return @byteArray
    end
    java_overload :get, 0
    

    # throws UnsupportedEncodingException
    def getString_j1(encoding)
        return @byteArray, encoding.pack("c*").force_encoding("UTF-8")
    end
    

    def getString_j0()
        begin
            return ::Org::Apache::Commons::Fileupload::FileItemUtil.getInstance().getString(@byteArray)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getString", e)
            end
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end

    def getString(*java_overload_args)
        return getString_j1(*java_overload_args) if java_overload_args.length == 1
        return getString_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method getString takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def write_j1_1(file)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def write_j1_2(file)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end

    def write(*java_overload_args)
        return write_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method write takes #{java_overload_args.length} arguments"
    end

    def write_j1(*java_overload_args)
        return write_j1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return write_j1_2(*java_overload_args)
    end
    

    def delete()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, "delete()")
    end
    java_overload :delete, 0
    

    def getFieldName()
        return @fieldName
    end
    java_overload :getFieldName, 0
    

    def setFieldName(name)
        @fieldName = name
    end
    java_overload :setFieldName, 1
    

    def isFormField()
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@fieldName)
            return false
        else
            return true
        end
    end
    java_overload :isFormField, 0
    

    def setFormField(state)
    end
    java_overload :setFormField, 1
    

    # throws IOException
    def getOutputStream()
        raise IOError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getOutputStream, 0
    

    def getHeaders()
        raise RuntimeError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getHeaders, 0
    

    def setHeaders(fih)
        raise RuntimeError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :setHeaders, 1
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemHeaders, "org/apache/commons/fileupload/FileItemHeaders" unless const_defined?(:FileItemHeaders, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemUtil, "org/apache/commons/fileupload/FileItemUtil" unless const_defined?(:FileItemUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

