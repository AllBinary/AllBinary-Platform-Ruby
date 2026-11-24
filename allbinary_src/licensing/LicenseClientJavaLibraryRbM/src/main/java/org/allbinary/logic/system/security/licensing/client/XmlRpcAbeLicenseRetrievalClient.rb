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

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Client

class XmlRpcAbeLicenseRetrievalClient < ::Org::Allbinary::Logic::Communication::Xmlrpc::XmlRpcAbeClient
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_system_security_licensing_client_XmlRpcAbeLicenseRetrievalClient
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(clientInfo)
        super(clientInfo, "LicServ.getLicense")
        jfields_org_allbinary_logic_system_security_licensing_client_XmlRpcAbeLicenseRetrievalClient
    end
    

    # throws Exception
    def get(anyType, cryptInterface)
        begin
            server = getClientInfo().getLicenseServer(self.getServer())
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(TRYING)
            stringBuffer.appendint(((self.getServer()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(SEP)
            stringBuffer.append(server)
            @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).to_s + stringBuffer.to_s, self, @commonStrings.GET)
            param = ::Org::Allbinary::Util::BasicArrayListD.new()
            xmlRpcClient = ::Org::Apache::Xmlrpc::XmlRpcClient.new(server)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            hashtable = self.getClientInfo().toHashtable()
            @logUtil.putF((CLIENT_INFO).to_s + hashtable.to_s, self, @commonStrings.GET)
            param.add(hashtable)
            result = xmlRpcClient.executeWithCrypt(self.getRemoteMethod(), param, cryptInterface)
            @logUtil.putF((RESULT).to_s + result.to_s, self, @commonStrings.GET)
            resultHashtable = result
            if !::Org::Allbinary::Logic::System::Security::Licensing::AbeClientLicense.hasRequiredKeys(resultHashtable)
                @logUtil.putF(INVALID, self, @commonStrings.GET)
                return self.tryAnother(anyType)
            end
            abeLicenseInterface = ::Org::Allbinary::Logic::System::Security::Licensing::AbeClientLicense.new(resultHashtable)
            @logUtil.putF((@commonStrings.END_).to_s + stringBuffer.to_s, self, @commonStrings.GET)
            @isOnline = true
            return abeLicenseInterface
        rescue IOError => e
            @logUtil.put(EXCEPTION_IN_CLIENT, self, @commonStrings.GET, e)
            @logUtil.putF(TRYING_OTHER_SERVERS + ::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e), self, @commonStrings.GET)
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
                @isOnline = false
                raise StandardError.new(HOST_NOT_RESOLVED_MSG)
            end
        rescue ::Org::Apache::Xmlrpc::XmlRpcException => e
            @logUtil.put(SERVER_REPORTED_ERROR, self, @commonStrings.GET, e)
            return self.tryAnother(anyType)
        rescue StandardError => e
            @logUtil.put(UNKNOWN_ERROR, self, @commonStrings.GET, e)
            return self.tryAnother(anyType)
        end
    end
    java_overload :get, 2
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Init; module Crypt; module Jcehelper; autoload :CryptInterface, "org/allbinary/init/crypt/jcehelper/CryptInterface" unless const_defined?(:CryptInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module ExceptionPackage; autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil" unless const_defined?(:ExceptionUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientLicense, "org/allbinary/logic/system/security/licensing/AbeClientLicense" unless const_defined?(:AbeClientLicense, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcClient, "org/apache/xmlrpc/XmlRpcClient" unless const_defined?(:XmlRpcClient, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException" unless const_defined?(:XmlRpcException, false); end; end; end

end; end; end; end; end; end; end

