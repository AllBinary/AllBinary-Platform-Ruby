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


class HttpFileUploadUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return HttpFileUploadUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def isValid(anyType)
        if anyType != nil && !(anyType.is_a?(String))
            if anyType.is_a?(FileItem)
                return true
            else
                raise StandardError.new("Object Not Instance Of FileItem but is: " + (ClassUtil.viewAll(anyType, CommonSeps.getInstance().NEW_LINE)).to_s)
            end
        end
        return false
    end
    

    # throws Exception
    def self.log(fileItem)
        logUtil = LogUtil.getInstance()
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTP)
            logUtil.putF(stringBuffer.to_s, HttpFileUploadUtil.getInstance(), "log()")
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.log(fileItem)
        logUtil = LogUtil.getInstance()
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
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
        stringBuffer.appendlong((fileItem.getSize()).to_i)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            logUtil.putF(stringBuffer.to_s, HttpFileUploadUtil.getInstance(), "log()")
        end
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

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :ClassUtil, "org/allbinary/logic/java/anyType/clazz/ClassUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :FileItem, "org/apache/commons/fileupload/FileItem"
autoload :FileItemStream, "org/apache/commons/fileupload/FileItemStream"

begin
    HttpFileUploadUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

