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
# package org.allbinary.logic.communication.smtp.info


module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info

class BasicEmailInfo
    attr_accessor :logUtil, :subject, :textBody, :emailServerConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_info_BasicEmailInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @subject = nil unless instance_variable_defined?(:@subject)
        @textBody = nil unless instance_variable_defined?(:@textBody)
        @emailServerConfigurationInterface = nil unless instance_variable_defined?(:@emailServerConfigurationInterface)
    end
    

    def initialize(subject, textBody)
        jfields_org_allbinary_logic_communication_smtp_info_BasicEmailInfo
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        @subject = subject
        @textBody = textBody
    end
    

    def getSubject()
        return @subject
    end
    

    def getTextBody()
        return @textBody
    end
    

    def getEmailServerConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    

    def setEmailServerConfigurationInterface(emailServerConfigurationInterface)
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.getEmailServerConfigurationInterface().to_s)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("Subject: \n")
        stringBuffer.append(self.getSubject())
        stringBuffer.append("\nText Body: \n")
        stringBuffer.append(self.getTextBody())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    # throws Exception
    def init()
        raise RuntimeError.new()
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server; autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface" unless const_defined?(:EmailServerConfigurationInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

