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

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"

module ::Org; module Allbinary; module Game; module Score; module Remote

class XmlRpcRemoteHighScoresClient < ::Org::Allbinary::Logic::Communication::Xmlrpc::XmlRpcAbeClient
    attr_accessor :logUtil, :page

    def jfields_org_allbinary_game_score_remote_XmlRpcRemoteHighScoresClient
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @page = nil unless instance_variable_defined?(:@page)
    end
    

    def initialize(clientInfo, page, remoteMethod)
        super(clientInfo, remoteMethod)
        jfields_org_allbinary_game_score_remote_XmlRpcRemoteHighScoresClient
        @page = page
        self.setServer(0)
    end
    

    # throws Exception
    def get(anyType, cryptInterface)
        begin
            param = ::Org::Allbinary::Util::BasicArrayListD.new()
            serverUrl = getClientInfo().getLicenseServer(self.getServer())
            index = (serverUrl.rindex("/") || -1)
            serverUrl = serverUrl[0...index + 1] + @page
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(TRYING)
            stringBuffer.appendint(((self.getServer()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(SEP)
            stringBuffer.append(serverUrl)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.GET)
            xmlRpcClient = ::Org::Apache::Xmlrpc::XmlRpcClient.new(serverUrl)
            self.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            hashtable = anyType
            @logUtil.putF((CLIENT_INFO).to_s + hashtable.to_s, self, @commonStrings.GET)
            param.add(hashtable)
            result = xmlRpcClient.executeWithCrypt(self.getRemoteMethod(), param, cryptInterface)
            @logUtil.putF((RESULT).to_s + result.to_s, self, @commonStrings.GET)
            @isOnline = true
            return result
        rescue IOError => e
            @logUtil.put(TRYING_OTHER_SERVERS + ::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e), self, @commonStrings.GET, e)
            if !e.message.startsWith(HOST_NOT_RESOLVED)
                return self.tryAnother(anyType)
            else
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
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcClient, "org/apache/xmlrpc/XmlRpcClient" unless const_defined?(:XmlRpcClient, false); end; end; end
module ::Org; module Apache; module Xmlrpc; autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException" unless const_defined?(:XmlRpcException, false); end; end; end

end; end; end; end; end

