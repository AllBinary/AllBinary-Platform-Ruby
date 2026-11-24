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

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session

class BasicWeblisketSession
    attr_accessor :session, :pageContext

    def jfields_org_allbinary_logic_communication_http_request_session_BasicWeblisketSession
        @session = nil unless instance_variable_defined?(:@session)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
    end
    

    def initialize(pageContext)
        jfields_org_allbinary_logic_communication_http_request_session_BasicWeblisketSession
        @pageContext = pageContext
        request = pageContext.getRequest()
        @session = request.getSession(true)
    end
    

    def setRole(aRole)
        @session.setAttribute(::Org::Allbinary::Business::User::Role::BasicUserRoleData::NAME.to_s, aRole)
    end
    

    def getRole()
        return @session.getAttribute(::Org::Allbinary::Business::User::Role::BasicUserRoleData::NAME.to_s)
    end
    

    def setPassword(password)
        @session.setAttribute(::Org::Allbinary::Business::User::UserData::PASSWORD, password)
    end
    

    def setUserName(userName)
        @session.setAttribute(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
    end
    

    def setPaymentMethod(value)
        @session.setAttribute(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, value)
    end
    

    def setAuthenticated_j0()
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE_STRING)
    end
    

    def setAttempts(value)
        @session.setAttribute(WeblisketSessionData::ATTEMPTS, value)
    end
    

    def setTimeout(value)
        @session.setAttribute(WeblisketSessionData::TIMEOUT, value)
    end
    

    def setStoreName(value)
        @session.setAttribute(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, value)
    end
    

    def getWebAppPath()
        return @session.getAttribute(::Org::Allbinary::Globals::GLOBALS2::WEBAPPPATH)
    end
    

    def getUserName()
        return @session.getAttribute(::Org::Allbinary::Business::User::UserData::USERNAME)
    end
    

    def getPassword()
        return @session.getAttribute(::Org::Allbinary::Business::User::UserData::PASSWORD)
    end
    

    def getPaymentMethod()
        return @session.getAttribute(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
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
        return @session.getAttribute(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
    end
    

    def setAuthenticated_j1(value)
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE_STRING)
    end

    def setAuthenticated(*java_overload_args)
        return setAuthenticated_j0(*java_overload_args) if java_overload_args.length == 0
        return setAuthenticated_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setAuthenticated takes #{java_overload_args.length} arguments"
    end
    

    def clear()
        @session.removeAttribute(WeblisketSessionData::AUTHENTICATED)
        @session.removeAttribute(WeblisketSessionData::TIMEOUT)
        @session.removeAttribute(::Org::Allbinary::Business::User::Role::BasicUserRoleData::NAME.to_s)
        @session.removeAttribute(::Org::Allbinary::Business::User::UserData::USERNAME)
    end
    

    def getCreationTime()
        return @session.getCreationTime()
    end
    

    def getLastAccessedTime()
        lastAccessedTime = @session.getLastAccessedTime()
        return lastAccessedTime
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRoleData, "org/allbinary/business/user/role/BasicUserRoleData" unless const_defined?(:BasicUserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false)

end; end; end; end; end; end; end

