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

class EmailInfo
    attr_accessor :logUtil, :basicEmailInfo, :htmlAttachment, :contentBase

    def jfields_org_allbinary_logic_communication_smtp_info_EmailInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicEmailInfo = nil unless instance_variable_defined?(:@basicEmailInfo)
        @htmlAttachment = nil unless instance_variable_defined?(:@htmlAttachment)
        @contentBase = nil unless instance_variable_defined?(:@contentBase)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_communication_smtp_info_EmailInfo_1(*args)
        when 3 then jnew_org_allbinary_logic_communication_smtp_info_EmailInfo_3(*args)
        else raise ArgumentError, "No constructor of EmailInfo takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_info_EmailInfo_1(basicEmailInfo)
        jfields_org_allbinary_logic_communication_smtp_info_EmailInfo
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.init(basicEmailInfo, nil, nil)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_info_EmailInfo_3(basicEmailInfo, htmlAttachment, contentBase)
        jfields_org_allbinary_logic_communication_smtp_info_EmailInfo
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.init(basicEmailInfo, nil, nil)
    end
    

    def init(basicEmailInfo, htmlAttachment, contentBase)
        @basicEmailInfo = basicEmailInfo
        @htmlAttachment = htmlAttachment
        @contentBase = contentBase
    end
    

    def getBasicEmailInfo()
        return @basicEmailInfo
    end
    

    def getHtmlAttachment()
        return @htmlAttachment
    end
    

    def getContentBase()
        return @contentBase
    end
    

    def toString()
        return "Email Info: \n " + self.getBasicEmailInfo().to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false)

end; end; end; end; end; end

