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
# package org.allbinary.logic.communication.http.request.session

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpSession"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"

class WeblisketSession
    include WeblisketSessionInterface
    attr_accessor :session

    def initialize_fields
        @session = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor2(hashMap, pageContext)
        constructor2(hashMap, pageContext.getRequest())
    end
    

    def constructor2(hashMap, httpServletRequest)
        initialize_fields
        propertiesHashMap = hashMap
        request = httpServletRequest
        @session = request.getSession(true)
        if self.getStoreName() == nil
            self.setStoreName(propertiesHashMap.get(StoreFrontData.getInstance().NAME))
        end
    end
    

    def getId()
        return @session.getId()
    end
    

    def setPassword(password)
        @session.setAttribute(UserData::PASSWORD, password)
    end
    

    def setUserName(userName)
        @session.setAttribute(UserData::USERNAME, userName)
    end
    

    def setPaymentMethod(value)
        @session.setAttribute(PaymentGatewayData::NAME.to_s, value)
    end
    

    def setAuthenticated()
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, BooleanFactory.getInstance().TRUE_STRING)
    end
    

    def setRole(aRole)
        @session.setAttribute(UserRoleData::NAME.to_s, aRole)
    end
    

    def setAttempts(value)
        @session.setAttribute(WeblisketSessionData::ATTEMPTS, value)
    end
    

    def setTimeout(value)
        @session.setAttribute(WeblisketSessionData::TIMEOUT, value)
    end
    

    def setStoreName(value)
        @session.setAttribute(StoreFrontData.getInstance().NAME, value)
    end
    

    def getWebAppPath()
        return @session.getAttribute(org.allbinary.globals.GLOBALS2.WEBAPPPATH)
    end
    

    def getUserName()
        return @session.getAttribute(UserData::USERNAME)
    end
    

    def getPassword()
        return @session.getAttribute(UserData::PASSWORD)
    end
    

    def getPaymentMethod()
        return @session.getAttribute(PaymentGatewayData::NAME.to_s)
    end
    

    def getAuthentication()
        return @session.getAttribute(WeblisketSessionData::AUTHENTICATED)
    end
    

    def getAttempts()
        return @session.getAttribute(WeblisketSessionData::ATTEMPTS)
    end
    

    def getTimeout()
        return @session.getAttribute(WeblisketSessionData::TIMEOUT)
    end
    

    def getStoreName()
        return @session.getAttribute(StoreFrontData.getInstance().NAME)
    end
    

    # throws Exception
    def getRole()
        userRole = @session.getAttribute(UserRoleData::NAME.to_s)
        if userRole != nil
            return UserRoleB.getRole(userRole.getBasicUserRole().getRole())
        else
            return nil
        end
    end
    

    # throws Exception
    def getOrder()
        storeFrontInterface = StoreFrontFactory.getInstance(self.getStoreName())
        basketName = storeFrontInterface.getBasketName()
        if !StringValidationUtil.getInstance().isEmpty(basketName)
            orderInterface = @session.getAttribute(basketName)
            if orderInterface == nil
                orderInterface = Order.new(Basket.new())
            end
            @session.setAttribute(basketName, orderInterface)
            return orderInterface
        else
            raise StandardError.new("Basket Name Not Found")
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setAuthenticated(value)
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, BooleanFactory.getInstance().FALSE_STRING)
    end
    

    def clear()
        @session.removeAttribute(WeblisketSessionData::AUTHENTICATED)
        @session.removeAttribute(WeblisketSessionData::TIMEOUT)
        @session.removeAttribute(UserRoleData::NAME.to_s)
        @session.removeAttribute(UserData::USERNAME)
    end
    

    def getCreationTime()
        return @session.getCreationTime()
    end
    

    def getLastAccessedTime()
        return @session.getLastAccessedTime()
    end
    

    def removeBasket()
        storeFrontInterface = StoreFrontFactory.getInstance(self.getStoreName())
        basketName = storeFrontInterface.getBasketName()
        if !StringValidationUtil.getInstance().isEmpty(basketName)
            @session.removeAttribute(basketName)
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/commerce/inventory/basket/Basket"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleB"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"

