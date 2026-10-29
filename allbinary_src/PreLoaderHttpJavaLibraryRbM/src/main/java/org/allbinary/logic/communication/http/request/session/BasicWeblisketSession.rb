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

class BasicWeblisketSession
    attr_accessor :session, :pageContext

    def initialize_fields
        @session = nil
        @pageContext = nil
    end
    

    def initialize(pageContext)
        initialize_fields
        @pageContext = pageContext
        request = pageContext.getRequest()
        @session = request.getSession(true)
    end
    

    def setRole(aRole)
        @session.setAttribute(BasicUserRoleData::NAME.to_s, aRole)
    end
    

    def getRole()
        return @session.getAttribute(BasicUserRoleData::NAME.to_s)
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
    

    # Java overloaded method: Ruby keeps the last definition
    def setAuthenticated(value)
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, BooleanFactory.getInstance().FALSE_STRING)
    end
    

    def clear()
        @session.removeAttribute(WeblisketSessionData::AUTHENTICATED)
        @session.removeAttribute(WeblisketSessionData::TIMEOUT)
        @session.removeAttribute(BasicUserRoleData::NAME.to_s)
        @session.removeAttribute(UserData::USERNAME)
    end
    

    def getCreationTime()
        return @session.getCreationTime()
    end
    

    def getLastAccessedTime()
        lastAccessedTime = @session.getLastAccessedTime()
        return lastAccessedTime
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/business/user/role/BasicUserRoleData"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"

