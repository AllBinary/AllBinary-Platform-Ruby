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

class ShippingAddressTag < TableTag
    attr_accessor :logUtil, :value

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @value = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(ShippingAddressHelperFactory.new())
        self.setTagRequestHelperFactory(ShippingAddressHelperFactory.new())
    end
    

    def setValue(value)
        @value = value
    end
    

    # throws LicensingException
    def set()
        begin
            anyType = ShippingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("set", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set Shipping Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "set()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def setToBillingAddress()
        begin
            anyType = ShippingAddressHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("setToBillingAddress", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed Setting Shipping address to Billing Address"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setShippingAddressToBillingAddress()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(ShippingAddressData::SELECT) == 0
                        self.set()
                        return @EVAL_BODY_INCLUDE
                    elsif self.getCommand().compareTo(ShippingAddressData::SETTOBILLINGADDRESS) == 0
                        self.setToBillingAddress()
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

require "admin/taghelpers/ShippingAddressHelperFactory"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

