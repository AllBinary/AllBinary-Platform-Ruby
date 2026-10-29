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

class PaymentTag < TableTag
    attr_accessor :logUtil, :storeName, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeName = nil
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(PaymentHelperFactory.new())
        self.setTagRequestHelperFactory(PaymentHelperFactory.new())
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    # throws LicensingException
    def select()
        begin
            anyType = PaymentHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("select", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to select Payment"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "selectPayment()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                @propertiesHashMap = StdUtil.getInstance().createHashMap()
                @propertiesHashMap.put(StoreFrontData.getInstance().NAME, @storeName)
                if self.getCommand() != nil
                    if self.getCommand().compareTo(PaymentData::SELECT) == 0
                        output = self.select()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return @EVAL_BODY_INCLUDE
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

require "java/util/HashMap"
require "admin/taghelpers/PaymentHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

