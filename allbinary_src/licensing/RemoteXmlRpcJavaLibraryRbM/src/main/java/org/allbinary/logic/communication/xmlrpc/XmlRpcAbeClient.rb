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
# package org.allbinary.logic.communication.xmlrpc


class XmlRpcAbeClient
    attr_accessor :logUtil, :commonStrings, :remoteMethod, :clientInfo, :client, :server, :start, :maxServers, :isDone, :START_SERVER, :TRYING, :SEP, :CLIENT_INFO, :RESULT, :INVALID, :EXCEPTION_IN_CLIENT, :SERVER_REPORTED_ERROR, :UNKNOWN_ERROR, :TRYING_OTHER_SERVERS, :HOST_NOT_RESOLVED_MSG, :HOST_NOT_RESOLVED, :myRandomFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @remoteMethod = nil
        @clientInfo = nil
        @client = NullXmlRpcHandler::NULL_XML_RPC_HANDLER
        @server = nil
        @start = 0
        @maxServers = 0
        @isDone = nil
        @START_SERVER = "Start With Server #"
        @TRYING = "Trying Server #"
        @SEP = CommonLabels.getInstance().COLON_SEP
        @CLIENT_INFO = "Client Info: \n"
        @RESULT = CommonLabels.getInstance().RESULT_ + CommonSeps.getInstance().NEW_LINE
        @INVALID = "License data is Invalid Trying Other Servers"
        @EXCEPTION_IN_CLIENT = "Exception in client"
        @SERVER_REPORTED_ERROR = "Server reported error"
        @UNKNOWN_ERROR = "Unknown License Retrieval Failure"
        @TRYING_OTHER_SERVERS = "IOException Trying Other Servers"
        @HOST_NOT_RESOLVED_MSG = "Not Trying Again Since Host Unresolved"
        @HOST_NOT_RESOLVED = "Host is unresolved"
        @myRandomFactory = MyRandomFactory.getInstance()
    end
    

    def initialize(clientInfo, remoteMethod)
        initialize_fields
        @remoteMethod = remoteMethod
        @clientInfo = clientInfo
        if clientInfo.getNumberOfLicenseServers() > 1
            @maxServers = clientInfo.getNumberOfLicenseServers() - 2
            @start = @myRandomFactory.getAbsoluteNextInt(@maxServers) + 1
        elsif clientInfo.getNumberOfLicenseServers() == 1
            @maxServers = 0
            @start = 0
        end
        @isDone = false
        @server = @start
        stringBuffer = StringMaker.new()
        stringBuffer.append(@START_SERVER)
        stringBuffer.appendint(self.getServer())
        stringBuffer.append(@SEP)
        stringBuffer.append(clientInfo.getLicenseServer(self.getServer()))
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    # throws Exception
    def get(anyType)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
        return NullUtil.getInstance().NULL_OBJECT
    end
    

    # throws Exception
    def tryAnother(anyType)
        if getServer() < getMaxServers()
            self.setServer(getServer() + 1)
        else
            self.setServer(0)
        end
        if getServer() != getStart() && !isIsDone()
            return self.get(anyType)
        else
            self.setIsDone(true)
        end
        raise StandardError.new("Tried All Servers But Still Failed")
    end
    

    def getClientInfo()
        return @clientInfo
    end
    

    def getClient()
        return @client
    end
    

    def setClient(client)
        @client = client
    end
    

    def getServer()
        return @server
    end
    

    def setServer(server)
        @server = server
    end
    

    def getStart()
        return @start
    end
    

    def setStart(start)
        @start = start
    end
    

    def getMaxServers()
        return @maxServers
    end
    

    def setMaxServers(maxServers)
        @maxServers = maxServers
    end
    

    def isIsDone()
        return @isDone
    end
    

    def setIsDone(isDone)
        @isDone = isDone
    end
    

    def getRemoteMethod()
        return @remoteMethod
    end

    def self.isOnline()
        return defined?(@@isOnline) ? @@isOnline : nil
    end

    def self.isOnline=(value)
        @@isOnline = value
    end
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/apache/xmlrpc/NullXmlRpcHandler"
require "org/apache/xmlrpc/XmlRpcClient"
require "org/apache/xmlrpc/XmlRpcHandler"

class XmlRpcAbeClient
    @@isOnline = true
end

