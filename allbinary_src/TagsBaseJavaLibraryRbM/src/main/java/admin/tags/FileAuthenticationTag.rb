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

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
# require "javax/servlet/jsp/tagext/TagSupport"
require "tags/CustomTagSupport"

module ::Admin; module Tags

class FileAuthenticationTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :attemptsInteger, :weblisketSession, :request, :command, :userName, :password, :newPassword, :authenticated, :sessionUserName, :role, :timeout, :roles

    def jfields_admin_tags_FileAuthenticationTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @attemptsInteger = nil unless instance_variable_defined?(:@attemptsInteger)
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @request = nil unless instance_variable_defined?(:@request)
        @command = nil unless instance_variable_defined?(:@command)
        @userName = nil unless instance_variable_defined?(:@userName)
        @password = nil unless instance_variable_defined?(:@password)
        @newPassword = nil unless instance_variable_defined?(:@newPassword)
        @authenticated = nil unless instance_variable_defined?(:@authenticated)
        @sessionUserName = nil unless instance_variable_defined?(:@sessionUserName)
        @role = nil unless instance_variable_defined?(:@role)
        @timeout = nil unless instance_variable_defined?(:@timeout)
        @roles = nil unless instance_variable_defined?(:@roles)
    end
    

    def initialize()
        super()
        jfields_admin_tags_FileAuthenticationTag
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setUserName(userName)
        @userName = userName
    end
    java_overload :setUserName, 1
    

    def setPassword(value)
        @password = value
    end
    java_overload :setPassword, 1
    

    def setNewPassword(value)
        @newPassword = value
    end
    java_overload :setNewPassword, 1
    

    def setRoles(values)
        @roles = values
    end
    java_overload :setRoles, 1
    

    def makeSessionValid(storedRole, userName)
        @weblisketSession.setAuthenticated()
        @weblisketSession.setRole(storedRole)
        @weblisketSession.setUserName(userName)
        @request.removeAttribute(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
        @request.removeAttribute(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEPASSWORD)
    end
    java_overload :makeSessionValid, 2
    

    def getFormData()
        @authenticated = @weblisketSession.getAuthentication()
        @sessionUserName = @weblisketSession.getUserName()
        @role = @weblisketSession.getRole()
        @attemptsInteger = @weblisketSession.getAttempts()
        @timeout = @weblisketSession.getTimeout()
    end
    java_overload :getFormData, 0
    

    def nextAttempt()
        if @attemptsInteger != nil && @attemptsInteger.to_i > 0
            @weblisketSession.setAttempts(@attemptsInteger.to_i + 1)
        else
            @weblisketSession.setAttempts(1)
        end
    end
    java_overload :nextAttempt, 0
    

    # throws LicensingException
    def changePassword()
        begin
            userName = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
            password = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEPASSWORD)
            newPassword = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLENEWPASSWORD)
            newReenteredPassword = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEREENTERNEWPASSWORD)
            if (newPassword <=> newReenteredPassword) != 0
                return false
            end
            installerInfo = ::Org::Allbinary::Business::Init::InstallerInfo.new()
            if installerInfo.isValid(userName, password)
                installerInfo.setPassword(newPassword)
                installerInfo.write()
                @weblisketSession.setUserName(userName)
                @weblisketSession.setPassword(newPassword)
                return true
            end
            return false
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return false
        end
    end
    java_overload :changePassword, 0
    

    def invalidateSession()
        begin
            @weblisketSession.clear()
            return TagSupport::EVAL_BODY_INCLUDE.to_i
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidateSession()", e)
            end
            return TagSupport::SKIP_BODY
        end
    end
    java_overload :invalidateSession, 0
    

    # throws LicensingException
    def isSessionOld()
        begin
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
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSessionOld()", e)
            end
            return false
        end
    end
    java_overload :isSessionOld, 0
    

    def isRarelyUsedSession()
        if @role != nil
            timeCreated = @weblisketSession.getCreationTime()
            lastAccess = @weblisketSession.getLastAccessedTime()
            timePassed = @role.getSessionInactivityTimeout()
            calendar = ::Java::Util::Calendar.getInstance()
            timeFirst = calendar.getTimeInMillis() - lastAccess
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().AUTHENTICATION)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Session Is Rarely Used - Timeout: ")
                stringBuffer.appendlong(lastAccess)
                stringBuffer.append(" Eval: ")
                stringBuffer.appendlong(timeFirst)
                stringBuffer.append(" > ")
                stringBuffer.appendlong(timePassed)
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
    

    # throws LicensingException
    def isRoleValid()
        begin
            self.makeSessionValid(::Org::Allbinary::Business::User::Role::BasicUserRoleFactory.getInstance().INSTALLER, @userName)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isRoleValid()", e)
            end
            return false
        end
    end
    java_overload :isRoleValid, 0
    

    # throws LicensingException
    def validRole()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Trying New login<p>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set valid role"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validRole()", e)
            end
            return error
        end
    end
    java_overload :validRole, 0
    

    # throws LicensingException
    def invalidRole()
        begin
            @weblisketSession.setAuthenticated(false)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Sorry your username and password is invalid on this page.")
            stringBuffer.append("Trying New login<p>")
            return stringBuffer.to_s
        rescue StandardError => e
            error = "Failed to set role invalid"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "invalidRole()", e)
            end
            return error
        end
    end
    java_overload :invalidRole, 0
    

    # throws LicensingException
    def isAuthenticationSessionValid()
        begin
            if ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(@authenticated)
                size = @roles.size()
                (0...size).each do |index|
                    mustBeOfRole = @roles.get(index)
                    if @sessionUserName != nil && @role.equals(mustBeOfRole)
                        return true
                    end
                end
                return false
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isAuthenticationSessionValid()", e)
            end
            return false
        end
    end
    java_overload :isAuthenticationSessionValid, 0
    

    # throws LicensingException
    def processIfNewLogin()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.putF("Starting for User: " + @userName + " Attempt: " + (@weblisketSession.getAttempts()).to_s, self, "processIfNewLogin()")
            end
            if @userName != nil && (@userName <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0 && @password != nil && (@password <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0
                login = nil
                installerInfo = ::Org::Allbinary::Business::Init::InstallerInfo.new()
                if installerInfo.isValid(@userName, @password)
                    login = ::Org::Allbinary::Globals::GLOBALS2::LOGINSUCCESS
                else
                    login = ::Org::Allbinary::Globals::GLOBALS2::LOGINFAILED
                end
                if (login <=> ::Org::Allbinary::Globals::GLOBALS2::LOGINSUCCESS) == 0
                    @weblisketSession.setAttempts(0)
                    return true
                end
                self.nextAttempt()
                return false
            end
            self.nextAttempt()
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "processIfNewLogin()", e)
            end
            return false
        end
    end
    java_overload :processIfNewLogin, 0
    

    # throws LicensingException
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isSetToInvalidate()", e)
            end
            return false
        end
    end
    java_overload :processInvalidation, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            @request = @pageContext.getRequest()
            @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::BasicWeblisketSession.new(@pageContext)
            self.getFormData()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("Started", self, @tagStrings.DO_START_TAG)
            end
            if @command != nil
                if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::CHANGEPASSWORD) == 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("Change Password", self, @tagStrings.DO_START_TAG)
                    end
                    if !self.changePassword()
                        @pageContext.getOut().print("Password Change Attempt Failed.<p>")
                        return EVAL_BODY_INCLUDE
                    else
                        @pageContext.getOut().print("Password Changed Successfully.<p>")
                        return SKIP_BODY
                    end
                elsif (@command <=> ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::INVALIDATESESSION) == 0
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        @logUtil.putF("INVALIDATESESSION", self, @tagStrings.DO_START_TAG)
                    end
                    return self.invalidateSession()
                else
                    if self.isSessionOld()
                        if self.processInvalidation()
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Processing Invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print("Please login again.<p>")
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        else
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Preparing session for invalidation", self, @tagStrings.DO_START_TAG)
                            end
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return TagSupport::SKIP_BODY
                            else
                                return TagSupport::EVAL_BODY_INCLUDE
                            end
                        end
                    end
                    if (@userName == nil || (@userName <=> stringUtil.EMPTY_STRING) == 0) && (@password == nil || (@password <=> stringUtil.EMPTY_STRING) == 0) && @roles != nil && self.isAuthenticationSessionValid()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Authenticated session is valid", self, @tagStrings.DO_START_TAG)
                        end
                        if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                            return TagSupport::EVAL_BODY_INCLUDE
                        else
                            return TagSupport::SKIP_BODY
                        end
                    end
                    if @userName != nil && @password != nil && self.processIfNewLogin()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Processing new login.", self, @tagStrings.DO_START_TAG)
                        end
                        if self.isRoleValid()
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(validRole())
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return EVAL_BODY_INCLUDE
                            else
                                return SKIP_BODY
                            end
                        else
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                                @logUtil.putF("Role is not valid - Processing new login", self, @tagStrings.DO_START_TAG)
                            end
                            @pageContext.getOut().print(invalidRole())
                            if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                                return SKIP_BODY
                            else
                                return EVAL_BODY_INCLUDE
                            end
                        end
                    else
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                            @logUtil.putF("Invalid Login", self, @tagStrings.DO_START_TAG)
                        end
                        if @userName != nil && (@userName <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0 && @password != nil && (@password <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) != 0
                            @pageContext.getOut().print("Sorry your username and/or password is invalid.<p>")
                        end
                    end
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append("Major authentication error - userName: ")
                        stringBuffer.append(@userName)
                        stringBuffer.append(" Password: ")
                        stringBuffer.append(@password)
                        stringBuffer.append(" Command: ")
                        stringBuffer.append(@command)
                        @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                    end
                    if (@command <=> ::Org::Allbinary::Globals::GLOBALS2::PROCESSBODYIFAUTHENTICATED) == 0
                        return TagSupport::SKIP_BODY
                    else
                        return TagSupport::EVAL_BODY_INCLUDE
                    end
                end
            end
            return SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :InstallerInfo, "org/allbinary/business/init/InstallerInfo" unless const_defined?(:InstallerInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory" unless const_defined?(:BasicUserRoleFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :BasicWeblisketSession, "org/allbinary/logic/communication/http/request/session/BasicWeblisketSession" unless const_defined?(:BasicWeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

