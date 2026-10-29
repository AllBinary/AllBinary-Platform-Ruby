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

class AbeHttpRequestInfo
    attr_accessor :NAME, :abeHttpRequestInfoData, :commonSeps, :httpUserAgent, :remoteAddress, :remoteHost, :remoteHostByAddr, :remotePort, :requestedFilePath

    def initialize_fields
        @NAME = "AbeHttpRequestInfo"
        @abeHttpRequestInfoData = AbeHttpRequestInfoData.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @httpUserAgent = nil
        @remoteAddress = nil
        @remoteHost = nil
        @remoteHostByAddr = nil
        @remotePort = nil
        @requestedFilePath = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(hashMap)
        initialize_fields
        stringUtil = StringUtil.getInstance()
        @httpUserAgent = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.HTTP_USER_AGENT))
        @remoteAddress = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_ADDRESS))
        @remoteHost = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_HOST))
        @remoteHostByAddr = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS))
        @remotePort = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REMOTE_PORT))
        @requestedFilePath = stringUtil.getNonNull(hashMap.get(@abeHttpRequestInfoData.REQUEST_FILE_PATH))
    end
    

    def constructor1(httpServletRequest)
        initialize_fields
        stringUtil = StringUtil.getInstance()
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
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(@abeHttpRequestInfoData.HTTP_USER_AGENT, @httpUserAgent)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_ADDRESS, @remoteAddress)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_HOST, @remoteHost)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS, @remoteHostByAddr)
        hashMap.put(@abeHttpRequestInfoData.REMOTE_PORT, @remotePort)
        hashMap.put(@abeHttpRequestInfoData.REQUEST_FILE_PATH, @requestedFilePath)
        return hashMap
    end
    

    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@httpUserAgent)
        vector.add(@remoteAddress)
        vector.add(@remoteHost)
        vector.add(@remoteHostByAddr)
        vector.add(@remotePort)
        vector.add(@requestedFilePath)
        return vector
    end
    

    def toString()
        return StringMaker.new().append(@NAME).append(@commonSeps.COLON_SEP).append(@abeHttpRequestInfoData.HTTP_USER_AGENT).append(@commonSeps.COLON_SEP).append(@httpUserAgent).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_ADDRESS).append(@commonSeps.COLON_SEP).append(@remoteAddress).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_HOST).append(@commonSeps.COLON_SEP).append(@remoteHost).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS).append(@commonSeps.COLON_SEP).append(@remoteHostByAddr).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REMOTE_PORT).append(@commonSeps.COLON_SEP).append(@remotePort).append(@commonSeps.SPACE).append(@abeHttpRequestInfoData.REQUEST_FILE_PATH).append(@commonSeps.COLON_SEP).append(@requestedFilePath).to_s
    end
    alias_method :to_s, :toString
end

require "java/util/Enumeration"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData"

