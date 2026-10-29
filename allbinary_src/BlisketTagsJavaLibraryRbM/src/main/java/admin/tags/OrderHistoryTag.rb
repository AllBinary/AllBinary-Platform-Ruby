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
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
require "admin/tags/TableTag"

class OrderHistoryTag < TableTag
    attr_accessor :logUtil, :status

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @status = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(OrderHistoryHelperFactory.new())
        self.setTagRequestHelperFactory(OrderHistoryRequestHelperFactory.new())
    end
    

    def setStatus(value)
        @status = value
    end
    

    # throws LicensingException
    def setOrderStatus()
        begin
            request = @pageContext.getRequest()
            anyType = OrderHistoryRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            if @status == nil
                helperClass = anyType.class
                method = helperClass.getMethod("setOrderStatus", nil)
                result = method.invoke(anyType, nil)
                return result
            else
                helperClass = anyType.class
                methodParams = [@status.class]
                method = helperClass.getMethod("setOrderStatus", methodParams)
                methodArgs = [@status]
                result = method.invoke(anyType, methodArgs)
                return result
            end
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to set Order Status"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setOrderStatus()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    self.getPropertiesHashMap().put(OrderHistoryData::STATUS, @status)
                    if self.getCommand().compareTo(OrderHistoryData::SETSTATUS) == 0
                        self.setOrderStatus()
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

require "admin/taghelpers/OrderHistoryHelperFactory"
require "admin/taghelpers/OrderHistoryRequestHelperFactory"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

