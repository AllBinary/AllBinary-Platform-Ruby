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
require "tags/CustomTagSupport"

class BasketTag < CustomTagSupport
    attr_accessor :logUtil, :command, :storeName, :propertiesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @command = nil
        @storeName = nil
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setCommand(command)
        @command = command
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    # throws LicensingException
    def isBasketEmpty()
        begin
            anyType = BasketHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("isBasketEmpty", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isBasketEmpty()", e)
            end
            return true
        end
    end
    

    # throws LicensingException
    def addItemToBasket()
        begin
            anyType = BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("addItemToBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to add item from Basket"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "addItemToBasket()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def removeItemFromBasket()
        begin
            anyType = BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("removeItemFromBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to remove item from Basket"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "removeItemFromBasket()", e)
            end
            return false
        end
    end
    

    # throws LicensingException
    def adjustBasket()
        begin
            anyType = BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("adjustBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to Adjust Basket"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "adjustBasket()", e)
            end
            return false
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if @command != nil
                @propertiesHashMap = StdUtil.getInstance().createHashMap()
                @propertiesHashMap.put(StoreFrontData.getInstance().NAME, @storeName)
                if (@command <=> BasketData::INSERT) == 0
                    if !self.addItemToBasket()
                        @pageContext.getOut().println("Item is not currently being sold.<p/>")
                    end
                elsif (@command <=> BasketData::DELETE) == 0
                    self.removeItemFromBasket()
                elsif (@command <=> BasketData::ADJUST) == 0
                    self.adjustBasket()
                elsif (@command <=> BasketData::ISEMPTY) == 0
                    if self.isBasketEmpty()
                        return @EVAL_BODY_INCLUDE
                    else
                        return SKIP_BODY
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
require "admin/taghelpers/BasketHelperFactory"
require "admin/taghelpers/BasketRequestHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/user/commerce/inventory/basket/BasketData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

