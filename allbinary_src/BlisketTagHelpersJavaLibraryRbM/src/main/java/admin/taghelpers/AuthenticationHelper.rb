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
# package admin.taghelpers

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
# require "javax/servlet/jsp/tagext/TagSupport"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class AuthenticationHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :authenticated, :sessionUserName, :role, :timeout, :attemptsInteger

    def jfields_admin_taghelpers_AuthenticationHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @authenticated = nil unless instance_variable_defined?(:@authenticated)
        @sessionUserName = nil unless instance_variable_defined?(:@sessionUserName)
        @role = nil unless instance_variable_defined?(:@role)
        @timeout = nil unless instance_variable_defined?(:@timeout)
        @attemptsInteger = nil unless instance_variable_defined?(:@attemptsInteger)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_admin_taghelpers_AuthenticationHelper_2(*args)
        else raise ArgumentError, "No constructor of AuthenticationHelper takes #{args.length} arguments"
        end
    end

    def jnew_admin_taghelpers_AuthenticationHelper_2(*java_overload_args)
        return jnew_admin_taghelpers_AuthenticationHelper_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return jnew_admin_taghelpers_AuthenticationHelper_2_2(*java_overload_args)
    end
    

    def jnew_admin_taghelpers_AuthenticationHelper_2_1(hashMap, pageContext)
        jnew_admin_taghelpers_AuthenticationHelper_2(hashMap, pageContext.getRequest())
    end
    

    def jnew_admin_taghelpers_AuthenticationHelper_2_2(hashMap, httpServletRequest)
        AuthenticationHelper.superclass.instance_method(:initialize).bind(self).call()
        jfields_admin_taghelpers_AuthenticationHelper
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, httpServletRequest)
        self.getFormData()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
            @logUtil.putF(self.outputSessionInfo(), self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def getFormData()
        @authenticated = @weblisketSession.getAuthentication()
        @sessionUserName = @weblisketSession.getUserName()
        @role = @weblisketSession.getRole()
        @attemptsInteger = @weblisketSession.getAttempts()
        @timeout = @weblisketSession.getTimeout()
    end
    java_overload :getFormData, 0
    

    # throws Exception
    def invalidateSession()
        begin
            @weblisketSession.clear()
            return TagSupport::EVAL_BODY_INCLUDE
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return nil
        end
    end
    java_overload :invalidateSession, 0
    

    def isSessionOld()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            sessionTimout = @role.getSessionTimeout()
            calendar = ::Java::Util::Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - sessionTimout
            if timeFirst > timeCreated
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Session Is Old - Timeout: ")
                    stringBuffer.appendlong(sessionTimout)
                    stringBuffer.append(" Eval: ")
                    stringBuffer.appendlong(timeFirst)
                    stringBuffer.append(" > ")
                    stringBuffer.appendlong(timeCreated)
                    @logUtil.putF(stringBuffer.to_s, self, "isSessionOld()")
                end
                return true
            end
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                @logUtil.putF("Role Is Not In Session", self, "isSessionOld()")
            end
        end
        return self.isRarelyUsedSession()
    end
    java_overload :isSessionOld, 0
    

    def isRarelyUsedSession()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            lastAccess = @weblisketSession.getLastAccessedTime()
            inactivityAllowed = @role.getSessionInactivityTimeout()
            calendar = ::Java::Util::Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - lastAccess
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Session Is Rarely Used - Timeout: ")
                stringBuffer.appendlong(lastAccess)
                stringBuffer.append(" Eval: ")
                stringBuffer.appendlong(timeFirst)
                stringBuffer.append(" > ")
                stringBuffer.appendlong(inactivityAllowed)
                @logUtil.putF(stringBuffer.to_s, self, "isRarelyUsedSession()")
            end
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                @logUtil.putF("Role Is Not In Session", self, "isRarelyUsedSession()")
            end
        end
        return false
    end
    java_overload :isRarelyUsedSession, 0
    

    def validRole()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Trying New login<p/>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set valid role"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validRole()", e)
            end
            return error
        end
    end
    java_overload :validRole, 0
    

    def invalidRole()
        begin
            @weblisketSession.setAuthenticated(false)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Sorry your username and password is invalid on this page. ")
            stringBuffer.append("Trying New login<p/>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set role invalid"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidRole()", e)
            end
            return error
        end
    end
    java_overload :invalidRole, 0
    

    # throws Exception
    def isAuthenticated()
        if ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(@authenticated)
            return true
        else
            return false
        end
    end
    java_overload :isAuthenticated, 0
    

    def isAuthenticationSessionValid(roles)
        begin
            if @role != nil
                if self.isAuthenticated()
                    if @sessionUserName != nil
                        basicUserRole = @role.getBasicUserRole()
                        basicUserRoleArray = roles.toArray()
                        size = basicUserRoleArray.length
                        (0...size).each do |index|
                            mustBeOfRole = basicUserRoleArray[index]
                            if basicUserRole.equals(mustBeOfRole)
                                if basicUserRole.equals(::Org::Allbinary::Business::User::Role::UserRoleFactory.getInstance().CUSTOMER)
                                    userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
                                    userInterface = userEntityInterface.getUser(@sessionUserName)
                                    if !userInterface.isSessionValid()
                                        return false
                                    end
                                end
                                return true
                            end
                        end
                    end
                    return false
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                    @logUtil.putF("Role Is Not In Session", self, "isAuthenticationSessionValid()")
                end
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isAuthenticatedSessionValid()", e)
            end
            return false
        end
    end
    java_overload :isAuthenticationSessionValid, 1
    

    def nextAttempt()
        if @attemptsInteger != nil && @attemptsInteger.to_i > 0
            @weblisketSession.setAttempts(@attemptsInteger.to_i + 1)
        else
            @weblisketSession.setAttempts(1)
        end
    end
    java_overload :nextAttempt, 0
    

    def processIfNewLogin(userName, password)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.putF("Starting: " + userName, self, "processIfNewLogin()")
            end
            if userName != nil && (userName <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0 && password != nil && (password <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0
                login = nil
                userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
                login = userEntityInterface.login(userName, password)
                if (login <=> ::Org::Allbinary::Globals::GLOBALS2::LOGINSUCCESS) == 0
                    userInterface = userEntityInterface.getUser(userName)
                    if userInterface.isSessionValid()
                        @weblisketSession.setAttempts(0)
                        return true
                    end
                end
                self.nextAttempt()
                return false
            end
            self.nextAttempt()
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processIfNewLogin()", e)
            end
            return false
        end
    end
    java_overload :processIfNewLogin, 2
    

    def processInvalidation()
        begin
            if ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(@timeout)
                self.invalidateSession()
                return true
            end
            begin
                @weblisketSession.setTimeout(::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE_STRING)
                return false
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processInvalidation()", e)
            end
            return false
        end
    end
    java_overload :processInvalidation, 0
    

    def outputSessionInfo()
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            timeCreated = @weblisketSession.getCreationTime()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            lastAccess = @weblisketSession.getLastAccessedTime()
            stringBuffer.append("Time Since Last Access: " + ((calendar.getTimeInMillis() - lastAccess)).to_s + "<br/>\n")
            if @role != nil
                stringBuffer.append("Auth: ")
                stringBuffer.append(@authenticated)
                stringBuffer.append(" UserName: ")
                stringBuffer.append(@sessionUserName)
                stringBuffer.append(" Role: ")
                stringBuffer.append(@role.to_s)
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Time Left: ")
                stringBuffer.appendlong((((@role.getSessionTimeout() - (calendar.getTimeInMillis() - timeCreated))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Inactivity Time Allowed: ")
                stringBuffer.appendlong(((@role.getSessionTimeout()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append("<br/>\n")
                stringBuffer.append("Inactivity Time Allowed: ")
                stringBuffer.appendlong(((@role.getSessionInactivityTimeout()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append("<br/>\n")
            else
                stringBuffer.append("Role Is Not Set<br/>\n")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            return "Error"
        end
    end
    java_overload :outputSessionInfo, 0
    

    def getRole()
        return @role
    end
    java_overload :getRole, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleFactory, "org/allbinary/business/user/role/UserRoleFactory" unless const_defined?(:UserRoleFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityInterface, "org/allbinary/data/tables/user/UserEntityInterface" unless const_defined?(:UserEntityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

