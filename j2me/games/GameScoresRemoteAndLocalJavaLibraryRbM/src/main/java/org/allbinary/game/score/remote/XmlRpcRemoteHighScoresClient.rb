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
# package org.allbinary.game.score.remote

# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

class XmlRpcRemoteHighScoresClient < XmlRpcAbeClient
    attr_accessor :logUtil, :page

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @page = nil
    end
    

    def initialize(clientInfo, page, remoteMethod)
        super(clientInfo, remoteMethod)
        initialize_fields
        @page = page
        self.setServer(0)
    end
    

    # throws Exception
    def get(anyType, cryptInterface)
        begin
            param = BasicArrayListD.new()
            serverUrl = getClientInfo().getLicenseServer(self.getServer())
            index = (serverUrl.rindex("/") || -1)
            serverUrl = serverUrl[0...index + 1] + @page
            stringBuffer = StringMaker.new()
            stringBuffer.append(TRYING)
            stringBuffer.appendint((self.getServer()).to_i)
            stringBuffer.append(SEP)
            stringBuffer.append(serverUrl)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.GET)
            xmlRpcClient = XmlRpcClient.new(serverUrl)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(nil, nil)
            hashtable = anyType
            @logUtil.putF((CLIENT_INFO).to_s + hashtable.to_s, self, @commonStrings.GET)
            param.add(hashtable)
            result = xmlRpcClient.execute(self.getRemoteMethod(), param, cryptInterface)
            @logUtil.putF((RESULT).to_s + result.to_s, self, @commonStrings.GET)
            @isOnline = true
            return result
        rescue IOError => e
            @logUtil.put(TRYING_OTHER_SERVERS + ExceptionUtil.getInstance().getStackTrace(e), self, @commonStrings.GET, e)
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
                raise StandardError.new(HOST_NOT_RESOLVED_MSG)
            end
        rescue XmlRpcException => e
            @logUtil.put(SERVER_REPORTED_ERROR, self, @commonStrings.GET, e)
            return self.tryAnother(anyType)
        rescue StandardError => e
            @logUtil.put(UNKNOWN_ERROR, self, @commonStrings.GET, e)
            return self.tryAnother(anyType)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/exception/ExceptionUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/util/ABHashtable"
require "org/apache/xmlrpc/XmlRpcClient"
require "org/apache/xmlrpc/XmlRpcException"

