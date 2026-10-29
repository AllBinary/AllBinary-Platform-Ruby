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
# package org.allbinary.logic.communication.log

# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

class XmlRpcRemoteLogClient < XmlRpcAbeClient
    attr_accessor :noCrypt

    def initialize_fields
        @noCrypt = NoCrypt.new()
    end
    

    def initialize(clientInfo)
        super(clientInfo, "SSLLogServ.logUtil")
        initialize_fields
    end
    

    # throws Exception
    def get(anyType)
        begin
            param = BasicArrayListD.new()
            serverUrl = getClientInfo().getLicenseServer(self.getServer())
            index = (serverUrl.rindex("/") || -1)
            serverUrl = serverUrl[0...index + 1] + "logservssl.php"
            xmlRpcClient = XmlRpcClient.new(serverUrl)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(nil, nil)
            hashtable = anyType
            param.add(hashtable)
            result = xmlRpcClient.execute(self.getRemoteMethod(), param, @noCrypt)
            puts((CommonLabels.getInstance().RESULT_ + CommonSeps.getInstance().NEW_LINE).to_s + result.to_s)
            return result
        rescue IOError => e
            puts("IOException Trying Other Servers")
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
                raise StandardError.new(HOST_NOT_RESOLVED_MSG)
            end
        rescue XmlRpcException => e
            return self.tryAnother(anyType)
        rescue StandardError => e
            return self.tryAnother(anyType)
        end
    end
end

require "org/apache/xmlrpc/XmlRpcClient"
require "org/apache/xmlrpc/XmlRpcException"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/ABHashtable"
require "java/lang/System"

