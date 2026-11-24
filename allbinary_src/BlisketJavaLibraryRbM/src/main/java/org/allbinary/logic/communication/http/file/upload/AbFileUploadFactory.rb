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
# require "java/util/List"
# require "javax/servlet/http/HttpServletRequest"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class AbFileUploadFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_http_file_upload_AbFileUploadFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return AbFileUploadFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_http_file_upload_AbFileUploadFactory
    end
    

    # throws Exception
    def getFileItemStreamList(httpServletRequest)
        begin
            fileUpload = AbFileUpload.new(::Org::Allbinary::Logic::Communication::Http::AbFileItemFactory.new())
            iterator = fileUpload.getItemIterator(httpServletRequest)
            items = ::Java::Util::ArrayList.new()
            while iterator.hasNext()
                fileItemStream = iterator.next_()
                HttpFileUploadUtil.log(fileItemStream)
                fileItem = AbFileItem.new(fileItemStream.getName(), fileItemStream.getFieldName(), ::Org::Apache::Commons::Fileupload::FileItemUtil.getInstance().getBytes(fileItemStream))
                items.add(fileItem)
            end
            return items
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "get()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getFileItemList(httpServletRequest)
        begin
            abFileUpload = AbFileUpload.new(::Org::Allbinary::Logic::Communication::Http::AbFileItemFactory.new())
            return abFileUpload.parseRequest(httpServletRequest)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, "get()", e)
            end
            raise e
        end
    end

    def self.instance()
        AbFileUploadFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbFileUploadFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbFileUploadFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbFileUploadFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :ArrayList, "java/util/ArrayList" unless const_defined?(:ArrayList, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; autoload :AbFileItemFactory, "org/allbinary/logic/communication/http/AbFileItemFactory" unless const_defined?(:AbFileItemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemIterator, "org/apache/commons/fileupload/FileItemIterator" unless const_defined?(:FileItemIterator, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemStream, "org/apache/commons/fileupload/FileItemStream" unless const_defined?(:FileItemStream, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemUtil, "org/apache/commons/fileupload/FileItemUtil" unless const_defined?(:FileItemUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AbFileItem, "org/allbinary/logic/communication/http/file/upload/AbFileItem" unless const_defined?(:AbFileItem, false)
autoload :AbFileUpload, "org/allbinary/logic/communication/http/file/upload/AbFileUpload" unless const_defined?(:AbFileUpload, false)
autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil" unless const_defined?(:HttpFileUploadUtil, false)

begin
    AbFileUploadFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

