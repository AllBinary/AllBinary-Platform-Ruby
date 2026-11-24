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

# require "javax/servlet/http/HttpServletRequest"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

class AbeHttpRequestInfo
    attr_accessor :NAME, :abeHttpRequestInfoData, :commonSeps, :httpUserAgent, :remoteAddress, :remoteHost, :remoteHostByAddr, :remotePort, :requestedFilePath

    def jfields_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo
        @NAME = "AbeHttpRequestInfo"
        @abeHttpRequestInfoData = AbeHttpRequestInfoData.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @httpUserAgent = nil unless instance_variable_defined?(:@httpUserAgent)
        @remoteAddress = nil unless instance_variable_defined?(:@remoteAddress)
        @remoteHost = nil unless instance_variable_defined?(:@remoteHost)
        @remoteHostByAddr = nil unless instance_variable_defined?(:@remoteHostByAddr)
        @remotePort = nil unless instance_variable_defined?(:@remotePort)
        @requestedFilePath = nil unless instance_variable_defined?(:@requestedFilePath)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1(*args)
        else raise ArgumentError, "No constructor of AbeHttpRequestInfo takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap))
        return jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1_1(hashMap)
        jfields_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @httpUserAgent = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.HTTP_USER_AGENT))
        @remoteAddress = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_ADDRESS))
        @remoteHost = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_HOST))
        @remoteHostByAddr = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS))
        @remotePort = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_PORT))
        @requestedFilePath = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REQUEST_FILE_PATH))
    end
    

    def jnew_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo_1_2(httpServletRequest)
        jfields_org_allbinary_logic_communication_http_request_AbeHttpRequestInfo
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @httpUserAgent = stringUtil.EMPTY_STRING
        enumuration = httpServletRequest.getHeaderNames()
        while enumuration.hasMoreElements()
            key = enumuration.nextElement()
            value = httpServletRequest.getHeader(key)
            if (key.index("user") || -1) >= 0
                @httpUserAgent = "key: " + key + " value: " + value
            end
        end
        @remoteHostByAddr = stringUtil.EMPTY_STRING
        @remoteAddress = httpServletRequest.getRemoteAddr()
        @remoteHost = httpServletRequest.getRemoteHost()
        @requestedFilePath = httpServletRequest.getServletPath()
        @remotePort = (httpServletRequest.getRemotePort()).to_s
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(@abeHttpRequestInfoData.HTTP_USER_AGENT, @httpUserAgent)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_ADDRESS, @remoteAddress)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_HOST, @remoteHost)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS, @remoteHostByAddr)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_PORT, @remotePort)
        hashMap.put(@abeHttpRequestInfoData.REQUEST_FILE_PATH, @requestedFilePath)
        return hashMap
    end
    

    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(@httpUserAgent)
        vector.add(@remoteAddress)
        vector.add(@remoteHost)
        vector.add(@remoteHostByAddr)
        vector.add(@remotePort)
        vector.add(@requestedFilePath)
        return vector
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@NAME).append(@commonSeps.COLON_SEP).append(@abeHttpRequestInfoData.HTTP_USER_AGENT).append(@commonSeps.COLON_SEP).append(@httpUserAgent).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_ADDRESS).append(@commonSeps.COLON_SEP).append(@remoteAddress).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_HOST).append(@commonSeps.COLON_SEP).append(@remoteHost).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS).append(@commonSeps.COLON_SEP).append(@remoteHostByAddr).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_PORT).append(@commonSeps.COLON_SEP).append(@remotePort).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REQUEST_FILE_PATH).append(@commonSeps.COLON_SEP).append(@requestedFilePath).to_s
    end
    alias_method :to_s, :toString
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :AbeHttpRequestInfoData, "org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData" unless const_defined?(:AbeHttpRequestInfoData, false)

end; end; end; end; end; end

