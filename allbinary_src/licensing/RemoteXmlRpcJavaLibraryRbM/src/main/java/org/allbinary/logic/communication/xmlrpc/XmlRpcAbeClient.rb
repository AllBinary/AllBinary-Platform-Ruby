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


module ::Org; module Allbinary; module Logic; module Communication; module Xmlrpc

class XmlRpcAbeClient
    attr_accessor :logUtil, :commonStrings, :remoteMethod, :clientInfo, :client, :server, :start, :maxServers, :isDone, :START_SERVER, :TRYING, :SEP, :CLIENT_INFO, :RESULT, :INVALID, :EXCEPTION_IN_CLIENT, :SERVER_REPORTED_ERROR, :UNKNOWN_ERROR, :TRYING_OTHER_SERVERS, :HOST_NOT_RESOLVED_MSG, :HOST_NOT_RESOLVED, :myRandomFactory

    def jfields_org_allbinary_logic_communication_xmlrpc_XmlRpcAbeClient
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @remoteMethod = nil unless instance_variable_defined?(:@remoteMethod)
        @clientInfo = nil unless instance_variable_defined?(:@clientInfo)
        @client = ::Org::Apache::Xmlrpc::NullXmlRpcHandler::NULL_XML_RPC_HANDLER
        @server = nil unless instance_variable_defined?(:@server)
        @start = 0 unless instance_variable_defined?(:@start)
        @maxServers = 0 unless instance_variable_defined?(:@maxServers)
        @isDone = nil unless instance_variable_defined?(:@isDone)
        @START_SERVER = "Start With Server #"
        @TRYING = "Trying Server #"
        @SEP = ::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP
        @CLIENT_INFO = "Client Info: \n"
        @RESULT = ::Org::Allbinary::StringPackage::CommonLabels.getInstance().RESULT_ + ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE
        @INVALID = "License data is Invalid Trying Other Servers"
        @EXCEPTION_IN_CLIENT = "Exception in client"
        @SERVER_REPORTED_ERROR = "Server reported error"
        @UNKNOWN_ERROR = "Unknown License Retrieval Failure"
        @TRYING_OTHER_SERVERS = "IOException Trying Other Servers"
        @HOST_NOT_RESOLVED_MSG = "Not Trying Again Since Host Unresolved"
        @HOST_NOT_RESOLVED = "Host is unresolved"
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
    end
    

    def initialize(clientInfo, remoteMethod)
        jfields_org_allbinary_logic_communication_xmlrpc_XmlRpcAbeClient
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@START_SERVER)
        stringBuffer.appendint(self.getServer())
        stringBuffer.append(@SEP)
        stringBuffer.append(clientInfo.getLicenseServer(self.getServer()))
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    # throws Exception
    def get(anyType)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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
        XmlRpcAbeClient.java_static_fields unless @java_static_fields_started
        return defined?(@@isOnline) ? @@isOnline : nil
    end

    def self.isOnline=(value)
        XmlRpcAbeClient.java_static_fields unless @java_static_fields_started
        @@isOnline = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@isOnline = true
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "XmlRpcAbeClient"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :NullXmlRpcHandler, "org/apache/xmlrpc/NullXmlRpcHandler" unless const_defined?(:NullXmlRpcHandler, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcClient, "org/apache/xmlrpc/XmlRpcClient" unless const_defined?(:XmlRpcClient, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcHandler, "org/apache/xmlrpc/XmlRpcHandler" unless const_defined?(:XmlRpcHandler, false); end; end; end

begin
    XmlRpcAbeClient.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

