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

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "admin/tags/TableTag"

class BillingAddressTag < TableTag
    attr_accessor :logUtil, :value

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @value = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(BillingAddressHelperFactory.new())
        self.setTagRequestHelperFactory(BillingAddressHelperFactory.new())
    end
    

    def setValue(value)
        @value = value
    end
    

    # throws LicensingException
    def set()
        begin
            anyType = BillingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("set", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set billing Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "set()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def setToShippingAddress()
        begin
            anyType = BillingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("setToShippingAddress", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to Set Billing address to Shipping Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setToShippingAddress()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(BillingAddressData::SELECT) == 0
                        self.set()
                        return @EVAL_BODY_INCLUDE
                    elsif self.getCommand().compareTo(BillingAddressData::SETTOSHIPPINGADDRESS) == 0
                        self.setToShippingAddress()
                    else
                        return super()
                    end
                end
            end
            return SKIP_BODY
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/BillingAddressHelperFactory"
require "org/allbinary/business/user/address/BillingAddressData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

