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

# require "java/util/List"
# require "javax/servlet/http/HttpServletRequest"

class AbFileUploadFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return AbFileUploadFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getFileItemStreamList(httpServletRequest)
        begin
            fileUpload = AbFileUpload.new(AbFileItemFactory.new())
            iterator = fileUpload.getItemIterator(httpServletRequest)
            items = ArrayList.new()
            while iterator.hasNext()
                fileItemStream = iterator.next_()
                HttpFileUploadUtil.log(fileItemStream)
                fileItem = AbFileItem.new(fileItemStream.getName(), fileItemStream.getFieldName(), FileItemUtil.getInstance().getBytes(fileItemStream))
                items.add(fileItem)
            end
            return items
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "get()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getFileItemList(httpServletRequest)
        begin
            abFileUpload = AbFileUpload.new(AbFileItemFactory.new())
            return abFileUpload.parseRequest(httpServletRequest)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPERROR)
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

autoload :ArrayList, "java/util/ArrayList"
autoload :AbFileItemFactory, "org/allbinary/logic/communication/http/AbFileItemFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :FileItemIterator, "org/apache/commons/fileupload/FileItemIterator"
autoload :FileItemStream, "org/apache/commons/fileupload/FileItemStream"
autoload :FileItemUtil, "org/apache/commons/fileupload/FileItemUtil"
autoload :AbFileItem, "org/allbinary/logic/communication/http/file/upload/AbFileItem"
autoload :AbFileUpload, "org/allbinary/logic/communication/http/file/upload/AbFileUpload"
autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"

begin
    AbFileUploadFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

