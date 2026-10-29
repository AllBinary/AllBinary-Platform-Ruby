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
# package tags.generic.order.history

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class OrderHistoryTag < StoreValidationTransformTag
    attr_accessor :logUtil, :status

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @status = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setStatus(value)
        @status = value
    end
    

    # throws LicensingException
    def setOrderStatus()
        begin
            anyType = OrderHistoryHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("setOrderStatus", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to view order table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Basic Order History View")
            self.setObjectFile("views.generic.order.history.ValidationView")
            if self.getCommand() != nil
                if self.getCommand().compareTo(OrderHistoryData::SETSTATUS) == 0
                    self.getPropertiesHashMap().put(OrderHistoryData::STATUS, @status)
                    @pageContext.getOut().print(self.setOrderStatus())
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return super()
            end
            raise StandardError.new("Command Null")
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "taghelpers/OrderHistoryHelperFactory"

