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
# package admin.tags

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Admin; module Tags

class PaymentProcessTag < ::Tags::StoreValidationTransformTag
    attr_accessor :logUtil

    def jfields_admin_tags_PaymentProcessTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_admin_tags_PaymentProcessTag
    end
    

    # throws LicensingException, Exception
    def process()
        begin
            anyType = ::Admin::Taghelpers::PaymentProcessHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod(@commonStrings.PROCESS, nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LICENSINGERROR)
                @logUtil.put("LicensingException", self, @commonStrings.PROCESS, e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            raise e
        end
    end
    java_overload :process, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::AUTHORIZEORDEREVALBODYONERROR) == 0 || self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::AUTHORIZEORDERANDEVALBODY) == 0 || self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::AUTHORIZEFORMEVALBODYONERROR) == 0
                @pageContext.getOut().print((self.process()).to_s + "<br />")
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::AUTHORIZEORDEREVALBODYONERROR) == 0
                    return @SKIP_BODY
                else
                    return @EVAL_BODY_INCLUDE
                end
            else
                raise StandardError.new("No Such Payment Processing Command")
            end
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :PaymentProcessHelperFactory, "admin/taghelpers/PaymentProcessHelperFactory" unless const_defined?(:PaymentProcessHelperFactory, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

