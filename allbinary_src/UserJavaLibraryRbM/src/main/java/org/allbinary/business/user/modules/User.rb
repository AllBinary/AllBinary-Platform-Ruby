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
# package org.allbinary.business.user.modules

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/user/UserInterface"

module ::Org; module Allbinary; module Business; module User; module Modules

class User
    include ::Org::Allbinary::Business::User::UserInterface
    attr_accessor :logUtil, :userName, :prefixName, :firstName, :lastName, :middleName, :suffixName, :company, :positionAtCompany, :mainEmail, :secondaryEmail, :homePhone, :cellPhone, :workPhone, :otherContact, :electronicDevice, :fax, :role, :encryption, :secret, :password, :enable, :permissions, :userConfigurationInterface

    def jfields_org_allbinary_business_user_modules_User
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userName = nil unless instance_variable_defined?(:@userName)
        @prefixName = nil unless instance_variable_defined?(:@prefixName)
        @firstName = nil unless instance_variable_defined?(:@firstName)
        @lastName = nil unless instance_variable_defined?(:@lastName)
        @middleName = nil unless instance_variable_defined?(:@middleName)
        @suffixName = nil unless instance_variable_defined?(:@suffixName)
        @company = nil unless instance_variable_defined?(:@company)
        @positionAtCompany = nil unless instance_variable_defined?(:@positionAtCompany)
        @mainEmail = nil unless instance_variable_defined?(:@mainEmail)
        @secondaryEmail = nil unless instance_variable_defined?(:@secondaryEmail)
        @homePhone = nil unless instance_variable_defined?(:@homePhone)
        @cellPhone = nil unless instance_variable_defined?(:@cellPhone)
        @workPhone = nil unless instance_variable_defined?(:@workPhone)
        @otherContact = nil unless instance_variable_defined?(:@otherContact)
        @electronicDevice = nil unless instance_variable_defined?(:@electronicDevice)
        @fax = nil unless instance_variable_defined?(:@fax)
        @role = nil unless instance_variable_defined?(:@role)
        @encryption = nil unless instance_variable_defined?(:@encryption)
        @secret = nil unless instance_variable_defined?(:@secret)
        @password = nil unless instance_variable_defined?(:@password)
        @enable = nil unless instance_variable_defined?(:@enable)
        @permissions = nil unless instance_variable_defined?(:@permissions)
        @userConfigurationInterface = nil unless instance_variable_defined?(:@userConfigurationInterface)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_User_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_User_1(*args)
        else raise ArgumentError, "No constructor of User takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_modules_User_1(*java_overload_args)
        return jnew_org_allbinary_business_user_modules_User_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_business_user_modules_User_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_modules_User_0()
        jfields_org_allbinary_business_user_modules_User
        @userConfigurationInterface = ::Org::Allbinary::Business::User::Modules::Configuration::UserConfigurationInterfaceFactory.getInstance()
        @password = ::Org::Allbinary::Business::User::Password::Password.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    def jnew_org_allbinary_business_user_modules_User_1_1(request)
        jfields_org_allbinary_business_user_modules_User
        self.getFormData(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(request).toHashMap())
        @userConfigurationInterface = ::Org::Allbinary::Business::User::Modules::Configuration::UserConfigurationInterfaceFactory.getInstance(self.getRole())
    end
    

    def jnew_org_allbinary_business_user_modules_User_1_2(userHashMap)
        jfields_org_allbinary_business_user_modules_User
        self.getFormData(userHashMap)
        @userConfigurationInterface = ::Org::Allbinary::Business::User::Modules::Configuration::UserConfigurationInterfaceFactory.getInstance(self.getRole())
    end
    

    # throws Exception
    def getFormData(userHashMap)
        @userName = ::Org::Allbinary::Business::User::Username::UserName.new(userHashMap).get()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        passwordString = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::PASSWORD))
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(@userName) && stringValidationUtil.isEmpty(passwordString)
            @userName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME))
            passwordString = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEPASSWORD))
        end
        encryption = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION))
        secret = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::SECRET))
        @password = ::Org::Allbinary::Business::User::Password::Password.new(passwordString)
        @prefixName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::PREFIXNAME))
        @firstName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::FIRSTNAME))
        @lastName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::LASTNAME))
        @middleName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::MIDDLENAME))
        @suffixName = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::SUFFIXNAME))
        @company = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::COMPANY))
        @positionAtCompany = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::POSITIONATCOMPANY))
        @mainEmail = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::MAINEMAIL))
        @secondaryEmail = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::SECONDARYEMAIL))
        @homePhone = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::HOMEPHONE))
        @cellPhone = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::CELLPHONE))
        @workPhone = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::WORKPHONE))
        @otherContact = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::OTHERCONTACT))
        @electronicDevice = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::ELECTRONICDEVICE))
        @fax = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::FAX))
        @role = ::Org::Allbinary::Business::User::Role::UserRoleB.getRole(userHashMap.get(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s))
        @permissions = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::User::UserData::PERMISSIONS))
        if !stringValidationUtil.isEmpty(@permissions) && (@permissions <=> ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME) == 0
            @permissions = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME))
        elsif @permissions == nil
            @permissions = "No Permissions"
        end
        @enable = stringUtil.getNonNull(userHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE))
    end
    java_overload :getFormData, 1
    

    def isValid()
        begin
            valid = true
            if !::Org::Allbinary::Business::User::Username::UserName.getInstance().isValid(@userName)
                valid = false
            end
            if !@password.isValid()
                valid = false
            end
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if !stringValidationUtil.isValidRequired(@firstName, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                valid = false
            end
            if !stringValidationUtil.isValidRequired(@lastName, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                valid = false
            end
            if !stringValidationUtil.isValidRequired(@mainEmail, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN) || (@mainEmail.index("@") || -1) == -1
                valid = false
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VALIDATIONERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put("Failed to validate form", self, commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Business::User::Username::UserName.getValidationInfo(@userName))
            stringBuffer.append(@password.getValidationInfo())
            if !stringValidationUtil.isValidRequired(@firstName, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                stringBuffer.append("Please enter a valid First Name.<br />")
            end
            if !stringValidationUtil.isValidRequired(@lastName, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN)
                stringBuffer.append("Please enter a valid Last Name.<br />")
            end
            if !stringValidationUtil.isValidRequired(@mainEmail, 1, ::Org::Allbinary::Business::User::UserData::MAXLEN) || (@mainEmail.index("@") || -1) == -1
                stringBuffer.append("Please enter a valid email address.<br />")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def setUserName(value)
        @userName = value
    end
    java_overload :setUserName, 1
    

    def setPrefixName(value)
        @prefixName = value
    end
    java_overload :setPrefixName, 1
    

    def setFirstName(value)
        @firstName = value
    end
    java_overload :setFirstName, 1
    

    def setLastName(value)
        @lastName = value
    end
    java_overload :setLastName, 1
    

    def setMiddleName(value)
        @middleName = value
    end
    java_overload :setMiddleName, 1
    

    def setSuffixName(value)
        @suffixName = value
    end
    java_overload :setSuffixName, 1
    

    def setCompany(value)
        @company = value
    end
    java_overload :setCompany, 1
    

    def setPositionAtCompany(value)
        @positionAtCompany = value
    end
    java_overload :setPositionAtCompany, 1
    

    def setMainEmail(value)
        @mainEmail = value
    end
    java_overload :setMainEmail, 1
    

    def setSecondaryEmail(value)
        @secondaryEmail = value
    end
    java_overload :setSecondaryEmail, 1
    

    def setHomePhone(value)
        @homePhone = value
    end
    java_overload :setHomePhone, 1
    

    def setCellPhone(value)
        @cellPhone = value
    end
    java_overload :setCellPhone, 1
    

    def setWorkPhone(value)
        @workPhone = value
    end
    java_overload :setWorkPhone, 1
    

    def setOtherContact(value)
        @otherContact = value
    end
    java_overload :setOtherContact, 1
    

    def setElectronicContact(value)
        @electronicDevice = value
    end
    java_overload :setElectronicContact, 1
    

    def setFax(value)
        @fax = value
    end
    java_overload :setFax, 1
    

    def setRole(role)
        @role = role
    end
    java_overload :setRole, 1
    

    def setPermissions(value)
        @permissions = value
    end
    java_overload :setPermissions, 1
    

    def setEncryption(value)
        @encryption = value
    end
    java_overload :setEncryption, 1
    

    def setSecret(value)
        @secret = value
    end
    java_overload :setSecret, 1
    

    def setPassword(value)
        @password.set(value)
    end
    java_overload :setPassword, 1
    

    def enable()
        self.setEnable("Yes")
    end
    java_overload :enable, 0
    

    def disable()
        self.setEnable("No")
    end
    java_overload :disable, 0
    

    def setEnable(enable)
        @enable = enable
    end
    java_overload :setEnable, 1
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def getPrefixName()
        return @prefixName
    end
    java_overload :getPrefixName, 0
    

    def getFirstName()
        return @firstName
    end
    java_overload :getFirstName, 0
    

    def getLastName()
        return @lastName
    end
    java_overload :getLastName, 0
    

    def getMiddleName()
        return @middleName
    end
    java_overload :getMiddleName, 0
    

    def getSuffixName()
        return @suffixName
    end
    java_overload :getSuffixName, 0
    

    def getCompany()
        return @company
    end
    java_overload :getCompany, 0
    

    def getPositionAtCompany()
        return @positionAtCompany
    end
    java_overload :getPositionAtCompany, 0
    

    def getMainEmail()
        return @mainEmail
    end
    java_overload :getMainEmail, 0
    

    def getSecondaryEmail()
        return @secondaryEmail
    end
    java_overload :getSecondaryEmail, 0
    

    def getHomePhone()
        return @homePhone
    end
    java_overload :getHomePhone, 0
    

    def getCellPhone()
        return @cellPhone
    end
    java_overload :getCellPhone, 0
    

    def getWorkPhone()
        return @workPhone
    end
    java_overload :getWorkPhone, 0
    

    def getOtherContact()
        return @otherContact
    end
    java_overload :getOtherContact, 0
    

    def getElectronicContact()
        return @electronicDevice
    end
    java_overload :getElectronicContact, 0
    

    def getFax()
        return @fax
    end
    java_overload :getFax, 0
    

    def getRole()
        return @role
    end
    java_overload :getRole, 0
    

    def getPermissions()
        return @permissions
    end
    java_overload :getPermissions, 0
    

    def getEncryption()
        return @encryption
    end
    java_overload :getEncryption, 0
    

    def getSecret()
        return @secret
    end
    java_overload :getSecret, 0
    

    def getPassword()
        return @password.get()
    end
    java_overload :getPassword, 0
    

    # throws Exception
    def toVector()
        values = ::Org::Allbinary::Util::BasicArrayListD.new()
        values.add(@userName)
        values.add(@prefixName)
        values.add(@firstName)
        values.add(@lastName)
        values.add(@middleName)
        values.add(@suffixName)
        values.add(@company)
        values.add(@positionAtCompany)
        values.add(@mainEmail)
        values.add(@secondaryEmail)
        values.add(@homePhone)
        values.add(@cellPhone)
        values.add(@workPhone)
        values.add(@otherContact)
        values.add(@electronicDevice)
        values.add(@fax)
        values.add(self.getRole().to_s)
        userConfigurationDomDocumentMapping = ::Org::Allbinary::Business::User::Modules::Configuration::UserConfigurationDomDocumentMapping.new(self.getUserConfigurationInterface())
        values.add(userConfigurationDomDocumentMapping.toDomDocumentString())
        values.add(@permissions)
        values.addAllList(@password.toVector(@secret))
        values.add(@enable)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    java_overload :toVector, 0
    

    # throws Exception
    def toHashMap()
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        values.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
        values.put(::Org::Allbinary::Business::User::UserData::PREFIXNAME, @prefixName)
        values.put(::Org::Allbinary::Business::User::UserData::FIRSTNAME, @firstName)
        values.put(::Org::Allbinary::Business::User::UserData::LASTNAME, @lastName)
        values.put(::Org::Allbinary::Business::User::UserData::MIDDLENAME, @middleName)
        values.put(::Org::Allbinary::Business::User::UserData::SUFFIXNAME, @suffixName)
        values.put(::Org::Allbinary::Business::User::UserData::COMPANY, @company)
        values.put(::Org::Allbinary::Business::User::UserData::POSITIONATCOMPANY, @positionAtCompany)
        values.put(::Org::Allbinary::Business::User::UserData::MAINEMAIL, @mainEmail)
        values.put(::Org::Allbinary::Business::User::UserData::SECONDARYEMAIL, @secondaryEmail)
        values.put(::Org::Allbinary::Business::User::UserData::HOMEPHONE, @homePhone)
        values.put(::Org::Allbinary::Business::User::UserData::CELLPHONE, @cellPhone)
        values.put(::Org::Allbinary::Business::User::UserData::WORKPHONE, @workPhone)
        values.put(::Org::Allbinary::Business::User::UserData::OTHERCONTACT, @otherContact)
        values.put(::Org::Allbinary::Business::User::UserData::ELECTRONICDEVICE, @electronicDevice)
        values.put(::Org::Allbinary::Business::User::UserData::FAX, @fax)
        if self.getRole() != nil
            values.put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, self.getRole().to_s)
        end
        userConfigurationDomDocumentMapping = ::Org::Allbinary::Business::User::Modules::Configuration::UserConfigurationDomDocumentMapping.new(self.getUserConfigurationInterface())
        values.put(::Org::Allbinary::Business::User::UserData::CONFIGURATION, userConfigurationDomDocumentMapping.toDomDocumentString())
        values.put(::Org::Allbinary::Business::User::UserData::PERMISSIONS, @permissions)
        values.putAll(@password.toHashMap(@secret))
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, @enable)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    java_overload :toHashMap, 0
    

    def toPasswordHashMap()
        return @password.toHashMap(@secret)
    end
    java_overload :toPasswordHashMap, 0
    

    def validateSession(weblisketSession)
        weblisketSession.setAuthenticated()
        weblisketSession.setRole(self.getRole())
        weblisketSession.setUserName(self.getUserName())
    end
    java_overload :validateSession, 1
    

    def updateSession(weblisketSession)
    end
    java_overload :updateSession, 1
    

    def isSessionValid()
        return true
    end
    java_overload :isSessionValid, 0
    

    # throws Exception
    def getKey()
        return @userName
    end
    java_overload :getKey, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    def getUserConfigurationInterface()
        return @userConfigurationInterface
    end
    java_overload :getUserConfigurationInterface, 0
    

    def setUserConfigurationInterface(userConfigurationInterface)
        @userConfigurationInterface = userConfigurationInterface
    end
    java_overload :setUserConfigurationInterface, 1
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration; autoload :UserConfigurationDomDocumentMapping, "org/allbinary/business/user/modules/configuration/UserConfigurationDomDocumentMapping" unless const_defined?(:UserConfigurationDomDocumentMapping, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration; autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface" unless const_defined?(:UserConfigurationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration; autoload :UserConfigurationInterfaceFactory, "org/allbinary/business/user/modules/configuration/UserConfigurationInterfaceFactory" unless const_defined?(:UserConfigurationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Password; autoload :Password, "org/allbinary/business/user/password/Password" unless const_defined?(:Password, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB" unless const_defined?(:UserRoleB, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Username; autoload :UserName, "org/allbinary/business/user/username/UserName" unless const_defined?(:UserName, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

