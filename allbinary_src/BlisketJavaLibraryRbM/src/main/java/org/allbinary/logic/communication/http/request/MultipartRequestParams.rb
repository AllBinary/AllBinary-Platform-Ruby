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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/util/List"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/RequestParams"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

class MultipartRequestParams < RequestParams
    attr_accessor :logUtil, :special

    def jfields_org_allbinary_logic_communication_http_request_MultipartRequestParams
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @special = false
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1(*args)
        else raise ArgumentError, "No constructor of MultipartRequestParams takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1_1(request)
        MultipartRequestParams.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_communication_http_request_MultipartRequestParams
        self.processMultipartRequest(request)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_MultipartRequestParams_1_2(pageContext)
        MultipartRequestParams.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_communication_http_request_MultipartRequestParams
        self.processMultipartRequest(pageContext.getRequest())
    end
    

    def setSpecial()
        @special = true
    end
    java_overload :setSpecial, 0
    

    def processMultipartRequest(request)
        begin
            specialRequest = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            multipartRequestList = ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::AbFileUploadFactory.getInstance().getFileItemStreamList(request)
            if multipartRequestList != nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("FileItem List Size: " + (multipartRequestList.size()).to_s, self, "processMultipartRequest()")
                end
                fileItemArray = multipartRequestList.toArray()
                size = fileItemArray.length
                (0...size).each do |index|
                    fileItem = fileItemArray[index]
                    name = fileItem.getName()
                    if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(name)
                        specialRequest.put(fileItem.getFieldName(), fileItem.getString())
                    else
                        specialRequest.put(fileItem.getFieldName(), fileItem)
                    end
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                    @logUtil.putF("Special Request Data: " + specialRequest.to_s, self, "processMultipartRequest()")
                end
                self.setSpecial()
                self.setMap(specialRequest)
            end
        rescue ::Org::Apache::Commons::Fileupload::FileUploadBase::InvalidContentTypeException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("Using Normal RequestParams", self, "processMultipartRequest()")
            end
            MultipartRequestParams.superclass.java_super_method(:setMap, 1).bind(self).call(request.getParameterMap())
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUESTERROR)
                @logUtil.putF("Should Not Occur", self, "processMultipartRequest()")
            end
            MultipartRequestParams.superclass.java_super_method(:setMap, 1).bind(self).call(request.getParameterMap())
        end
    end
    java_overload :processMultipartRequest, 1
    

    # throws Exception
    def toHashMap()
        if @special
            return self.getMap()
        else
            return MultipartRequestParams.superclass.java_super_method(:toHashMap, 0).bind(self).call()
        end
    end
    java_overload :toHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :AbFileUploadFactory, "org/allbinary/logic/communication/http/file/upload/AbFileUploadFactory" unless const_defined?(:AbFileUploadFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileUploadBase, "org/apache/commons/fileupload/FileUploadBase" unless const_defined?(:FileUploadBase, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

