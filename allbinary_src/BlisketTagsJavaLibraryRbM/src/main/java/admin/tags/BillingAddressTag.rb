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
require "admin/tags/TableTag"

module ::Admin; module Tags

class BillingAddressTag < TableTag
    attr_accessor :logUtil, :value

    def jfields_admin_tags_BillingAddressTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize()
        super()
        jfields_admin_tags_BillingAddressTag
        self.setTagHelperFactory(::Admin::Taghelpers::BillingAddressHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::BillingAddressHelperFactory.new())
    end
    

    def setValue(value)
        @value = value
    end
    java_overload :setValue, 1
    

    # throws LicensingException
    def set()
        begin
            anyType = ::Admin::Taghelpers::BillingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("set", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set billing Address"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "set()", e)
            end
            return error
        end
    end
    java_overload :set, 0
    

    # throws LicensingException
    def setToShippingAddress()
        begin
            anyType = ::Admin::Taghelpers::BillingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("setToShippingAddress", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to Set Billing address to Shipping Address"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setToShippingAddress()", e)
            end
            return error
        end
    end
    java_overload :setToShippingAddress, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::BillingAddressData::SELECT) == 0
                        self.set()
                        return @EVAL_BODY_INCLUDE
                    elsif self.getCommand().compareTo(::Org::Allbinary::Business::User::Address::BillingAddressData::SETTOSHIPPINGADDRESS) == 0
                        self.setToShippingAddress()
                    else
                        return BillingAddressTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                    end
                end
            end
            return SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :BillingAddressHelperFactory, "admin/taghelpers/BillingAddressHelperFactory" unless const_defined?(:BillingAddressHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :BillingAddressData, "org/allbinary/business/user/address/BillingAddressData" unless const_defined?(:BillingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

