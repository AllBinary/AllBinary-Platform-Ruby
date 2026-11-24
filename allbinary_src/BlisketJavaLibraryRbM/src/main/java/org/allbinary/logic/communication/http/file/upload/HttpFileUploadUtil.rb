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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class HttpFileUploadUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_http_file_upload_HttpFileUploadUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return HttpFileUploadUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_http_file_upload_HttpFileUploadUtil
    end
    

    # throws Exception
    def isValid(anyType)
        if anyType != nil && !anyType.is_a?(String)
            if anyType.is_a?(::Org::Apache::Commons::Fileupload::FileItem)
                return true
            else
                raise StandardError.new("Object Not Instance Of FileItem but is: " + (::Org::Allbinary::Logic::Java::AnyType::Clazz::ClassUtil.viewAll(anyType, ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)).to_s)
            end
        end
        return false
    end
    

    # throws Exception
    def self.log_j1_1(fileItem)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer.append("FileItem Log:")
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Content Type:")
        stringBuffer.append(fileItem.getContentType())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Field Name:")
        stringBuffer.append(fileItem.getFieldName())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Name:")
        stringBuffer.append(fileItem.getName())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Size:")
        stringBuffer.append(" Not Calculated Yet")
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTP)
            logUtil.putF(stringBuffer.to_s, HttpFileUploadUtil.getInstance(), "log()")
        end
    end
    

    def self.log_j1_2(fileItem)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer.append("FileItem Log:")
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Content Type:")
        stringBuffer.append(fileItem.getContentType())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Field Name:")
        stringBuffer.append(fileItem.getFieldName())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Name:")
        stringBuffer.append(fileItem.getName())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append("Size:")
        stringBuffer.appendlong(((fileItem.getSize()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            logUtil.putF(stringBuffer.to_s, HttpFileUploadUtil.getInstance(), "log()")
        end
    end

    def self.log(*java_overload_args)
        return log_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method log takes #{java_overload_args.length} arguments"
    end

    def self.log_j1(*java_overload_args)
        return log_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Apache::Commons::Fileupload::FileItemStream))
        return log_j1_2(*java_overload_args)
    end

    def self.instance()
        HttpFileUploadUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HttpFileUploadUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HttpFileUploadUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HttpFileUploadUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; module Clazz; autoload :ClassUtil, "org/allbinary/logic/java/anyType/clazz/ClassUtil" unless const_defined?(:ClassUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemStream, "org/apache/commons/fileupload/FileItemStream" unless const_defined?(:FileItemStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    HttpFileUploadUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

