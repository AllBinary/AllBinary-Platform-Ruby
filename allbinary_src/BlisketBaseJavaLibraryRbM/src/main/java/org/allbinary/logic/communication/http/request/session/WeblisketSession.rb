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

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpSession"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session

class WeblisketSession
    include WeblisketSessionInterface
    attr_accessor :session

    def jfields_org_allbinary_logic_communication_http_request_session_WeblisketSession
        @session = nil unless instance_variable_defined?(:@session)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2(*args)
        else raise ArgumentError, "No constructor of WeblisketSession takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2(*java_overload_args)
        return jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2_1(hashMap, pageContext)
        jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2(hashMap, pageContext.getRequest())
    end
    

    def jnew_org_allbinary_logic_communication_http_request_session_WeblisketSession_2_2(hashMap, httpServletRequest)
        jfields_org_allbinary_logic_communication_http_request_session_WeblisketSession
        propertiesHashMap = hashMap
        request = httpServletRequest
        @session = request.getSession(true)
        if self.getStoreName() == nil
            self.setStoreName(propertiesHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME))
        end
    end
    

    def getId()
        return @session.getId()
    end
    java_overload :getId, 0
    

    def setPassword(password)
        @session.setAttribute(::Org::Allbinary::Business::User::UserData::PASSWORD, password)
    end
    java_overload :setPassword, 1
    

    def setUserName(userName)
        @session.setAttribute(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
    end
    java_overload :setUserName, 1
    

    def setPaymentMethod(value)
        @session.setAttribute(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, value)
    end
    java_overload :setPaymentMethod, 1
    

    def setAuthenticated_j0()
        @session.setAttribute(WeblisketSessionData::AUTHENTICATED, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE_STRING)
    end
    

    def setRole(aRole)
        @session.setAttribute(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, aRole)
    end
    java_overload :setRole, 1
    

    def setAttempts(value)
        @session.setAttribute(WeblisketSessionData::ATTEMPTS, value)
    end
    java_overload :setAttempts, 1
    

    def setTimeout(value)
        @session.setAttribute(WeblisketSessionData::TIMEOUT, value)
    end
    java_overload :setTimeout, 1
    

    def setStoreName(value)
        @session.setAttribute(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, value)
    end
    java_overload :setStoreName, 1
    

    def getWebAppPath()
        return @session.getAttribute(::Org::Allbinary::Globals::GLOBALS2::WEBAPPPATH)
    end
    java_overload :getWebAppPath, 0
    

    def getUserName()
        return @session.getAttribute(::Org::Allbinary::Business::User::UserData::USERNAME)
    end
    java_overload :getUserName, 0
    

    def getPassword()
        return @session.getAttribute(::Org::Allbinary::Business::User::UserData::PASSWORD)
    end
    java_overload :getPassword, 0
    

    def getPaymentMethod()
        return @session.getAttribute(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
    end
    java_overload :getPaymentMethod, 0
    

    def getAuthentication()
        return @session.getAttribute(WeblisketSessionData::AUTHENTICATED)
    end
    java_overload :getAuthentication, 0
    

    def getAttempts()
        return @session.getAttribute(WeblisketSessionData::ATTEMPTS)
    end
    java_overload :getAttempts, 0
    

    def getTimeout()
        return @session.getAttribute(WeblisketSessionData::TIMEOUT)
    end
    java_overload :getTimeout, 0
    

    def getStoreName()
        return @session.getAttribute(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
    end
    java_overload :getStoreName, 0
    

    # throws Exception
    def getRole()
        userRole = @session.getAttribute(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s)
        if userRole != nil
            return ::Org::Allbinary::Business::User::Role::UserRoleB.getRole(userRole.getBasicUserRole().getRole())
        else
            return nil
        end
    end
    java_overload :getRole, 0
    

    # throws Exception
    def getOrder()
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getStoreName())
        basketName = storeFrontInterface.getBasketName()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(basketName)
            orderInterface = @session.getAttribute(basketName)
            if orderInterface == nil
                orderInterface = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::Order.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new())
            end
            @session.setAttribute(basketName, orderInterface)
            return orderInterface
        else
            raise StandardError.new("Basket Name Not Found")
        end
    end
    java_overload :getOrder, 0
    

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
        @session.removeAttribute(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s)
        @session.removeAttribute(::Org::Allbinary::Business::User::UserData::USERNAME)
    end
    java_overload :clear, 0
    

    def getCreationTime()
        return @session.getCreationTime()
    end
    java_overload :getCreationTime, 0
    

    def getLastAccessedTime()
        return @session.getLastAccessedTime()
    end
    java_overload :getLastAccessedTime, 0
    

    def removeBasket()
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getStoreName())
        basketName = storeFrontInterface.getBasketName()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(basketName)
            @session.removeAttribute(basketName)
        end
    end
    java_overload :removeBasket, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :Basket, "org/allbinary/business/user/commerce/inventory/basket/Basket" unless const_defined?(:Basket, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order" unless const_defined?(:Order, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB" unless const_defined?(:UserRoleB, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false)

end; end; end; end; end; end; end

