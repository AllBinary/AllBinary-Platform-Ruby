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
# package org.allbinary.logic.system.security.licensing.client

# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

class XmlRpcAbeLicenseRetrievalClient < XmlRpcAbeClient
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(clientInfo)
        super(clientInfo, "LicServ.getLicense")
        initialize_fields
    end
    

    # throws Exception
    def get(anyType, cryptInterface)
        begin
            server = getClientInfo().getLicenseServer(self.getServer())
            stringBuffer = StringMaker.new()
            stringBuffer.append(TRYING)
            stringBuffer.appendint((self.getServer()).to_i)
            stringBuffer.append(SEP)
            stringBuffer.append(server)
            @logUtil.putF((CommonLabels.getInstance().START_LABEL).to_s + stringBuffer.to_s, self, @commonStrings.GET)
            param = BasicArrayListD.new()
            xmlRpcClient = XmlRpcClient.new(server)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(nil, nil)
            hashtable = self.getClientInfo().toHashtable()
            @logUtil.putF((CLIENT_INFO).to_s + hashtable.to_s, self, @commonStrings.GET)
            param.add(hashtable)
            result = xmlRpcClient.execute(self.getRemoteMethod(), param, cryptInterface)
            @logUtil.putF((RESULT).to_s + result.to_s, self, @commonStrings.GET)
            resultHashtable = result
            if !AbeClientLicense.hasRequiredKeys(resultHashtable)
                @logUtil.putF(INVALID, self, @commonStrings.GET)
                return self.tryAnother(anyType)
            end
            abeLicenseInterface = AbeClientLicense.new(resultHashtable)
            @logUtil.putF((@commonStrings.END_).to_s + stringBuffer.to_s, self, @commonStrings.GET)
            @isOnline = true
            return abeLicenseInterface
        rescue IOError => e
            @logUtil.put(EXCEPTION_IN_CLIENT, self, @commonStrings.GET, e)
            @logUtil.putF(TRYING_OTHER_SERVERS + ExceptionUtil.getInstance().getStackTrace(e), self, @commonStrings.GET)
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
                @isOnline = false
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
require "org/allbinary/logic/system/security/licensing/AbeClientLicense"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/ABHashtable"
require "org/apache/xmlrpc/XmlRpcClient"
require "org/apache/xmlrpc/XmlRpcException"

