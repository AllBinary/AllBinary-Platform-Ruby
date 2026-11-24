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

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

module ::Org; module Allbinary; module Logic; module Communication; module Log

class XmlRpcRemoteLogClient < ::Org::Allbinary::Logic::Communication::Xmlrpc::XmlRpcAbeClient
    attr_accessor :noCrypt

    def jfields_org_allbinary_logic_communication_log_XmlRpcRemoteLogClient
        @noCrypt = ::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::NoCrypt.new()
    end
    

    def initialize(clientInfo)
        super(clientInfo, "SSLLogServ.logUtil")
        jfields_org_allbinary_logic_communication_log_XmlRpcRemoteLogClient
    end
    

    # throws Exception
    def get(anyType)
        begin
            param = ::Org::Allbinary::Util::BasicArrayListD.new()
            serverUrl = getClientInfo().getLicenseServer(self.getServer())
            index = (serverUrl.rindex("/") || -1)
            serverUrl = serverUrl[0...index + 1] + "logservssl.php"
            xmlRpcClient = ::Org::Apache::Xmlrpc::XmlRpcClient.new(serverUrl)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            hashtable = anyType
            param.add(hashtable)
            result = xmlRpcClient.executeWithCrypt(self.getRemoteMethod(), param, @noCrypt)
            puts((::Org::Allbinary::StringPackage::CommonLabels.getInstance().RESULT_ + ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE).to_s + result.to_s)
            return result
        rescue IOError => e
            puts("IOException Trying Other Servers")
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
                raise StandardError.new(HOST_NOT_RESOLVED_MSG)
            end
        rescue ::Org::Apache::Xmlrpc::XmlRpcException => e
            return self.tryAnother(anyType)
        rescue StandardError => e
            return self.tryAnother(anyType)
        end
    end
    java_overload :get, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcClient, "org/apache/xmlrpc/XmlRpcClient" unless const_defined?(:XmlRpcClient, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException" unless const_defined?(:XmlRpcException, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :NoCrypt, "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt" unless const_defined?(:NoCrypt, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
require "java/lang/System"

end; end; end; end; end

