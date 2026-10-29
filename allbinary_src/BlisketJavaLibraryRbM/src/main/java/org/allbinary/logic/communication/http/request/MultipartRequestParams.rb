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
# package org.allbinary.logic.communication.http.request

# require "java/util/List"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/RequestParams"

class MultipartRequestParams < RequestParams
    attr_accessor :logUtil, :special

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @special = false
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(request)
        method(:initialize).super_method.call()
        initialize_fields
        self.processMultipartRequest(request)
    end
    

    def constructor1(pageContext)
        method(:initialize).super_method.call()
        initialize_fields
        self.processMultipartRequest(pageContext.getRequest())
    end
    

    def setSpecial()
        @special = true
    end
    

    def processMultipartRequest(request)
        begin
            specialRequest = StdUtil.getInstance().createHashMap()
            multipartRequestList = AbFileUploadFactory.getInstance().getFileItemStreamList(request)
            if multipartRequestList != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("FileItem List Size: " + (multipartRequestList.size()).to_s, self, "processMultipartRequest()")
                end
                fileItemArray = multipartRequestList.toArray()
                size = fileItemArray.length
                (0...size).each do |index|
                    fileItem = fileItemArray[index]
                    name = fileItem.getName()
                    if StringValidationUtil.getInstance().isEmpty(name)
                        specialRequest.put(fileItem.getFieldName(), fileItem.getString())
                    else
                        specialRequest.put(fileItem.getFieldName(), fileItem)
                    end
                end
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Special Request Data: " + specialRequest.to_s, self, "processMultipartRequest()")
                end
                self.setSpecial()
                self.setMap(specialRequest)
            end
        rescue InvalidContentTypeException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("Using Normal RequestParams", self, "processMultipartRequest()")
            end
            self.class.superclass.instance_method(:setMap).bind(self).call(request.getParameterMap())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUESTERROR)
                @logUtil.putF("Should Not Occur", self, "processMultipartRequest()")
            end
            self.class.superclass.instance_method(:setMap).bind(self).call(request.getParameterMap())
        end
    end
    

    # throws Exception
    def toHashMap()
        if @special
            return self.getMap()
        else
            return super()
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/file/upload/AbFileUploadFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/apache/commons/fileupload/FileItem"
require "org/apache/commons/fileupload/FileUploadBase/InvalidContentTypeException"

