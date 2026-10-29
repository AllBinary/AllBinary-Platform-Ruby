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

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/user/UserInterface"

class User
    include UserInterface
    attr_accessor :logUtil, :userName, :prefixName, :firstName, :lastName, :middleName, :suffixName, :company, :positionAtCompany, :mainEmail, :secondaryEmail, :homePhone, :cellPhone, :workPhone, :otherContact, :electronicDevice, :fax, :role, :encryption, :secret, :password, :enable, :permissions, :userConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userName = nil
        @prefixName = nil
        @firstName = nil
        @lastName = nil
        @middleName = nil
        @suffixName = nil
        @company = nil
        @positionAtCompany = nil
        @mainEmail = nil
        @secondaryEmail = nil
        @homePhone = nil
        @cellPhone = nil
        @workPhone = nil
        @otherContact = nil
        @electronicDevice = nil
        @fax = nil
        @role = nil
        @encryption = nil
        @secret = nil
        @password = nil
        @enable = nil
        @permissions = nil
        @userConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @userConfigurationInterface = UserConfigurationInterfaceFactory.getInstance()
        @password = Password.new(StringUtil.getInstance().EMPTY_STRING)
    end
    

    def constructor1(request)
        initialize_fields
        self.getFormData(RequestParams.new(request).toHashMap())
        @userConfigurationInterface = UserConfigurationInterfaceFactory.getInstance(self.getRole())
    end
    

    def constructor1(userHashMap)
        initialize_fields
        self.getFormData(userHashMap)
        @userConfigurationInterface = UserConfigurationInterfaceFactory.getInstance(self.getRole())
    end
    

    # throws Exception
    def getFormData(userHashMap)
        @userName = UserName.new(userHashMap).get()
        stringUtil = StringUtil.getInstance()
        passwordString = stringUtil.getNonNull(userHashMap.get(UserData::PASSWORD))
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(@userName) && stringValidationUtil.isEmpty(passwordString)
            @userName = stringUtil.getNonNull(userHashMap.get(WeblisketSessionData::REMOVABLEUSERNAME))
            passwordString = stringUtil.getNonNull(userHashMap.get(WeblisketSessionData::REMOVABLEPASSWORD))
        end
        encryption = stringUtil.getNonNull(userHashMap.get(EntryData.getInstance().ENCRYPTION))
        secret = stringUtil.getNonNull(userHashMap.get(UserData::SECRET))
        @password = Password.new(passwordString)
        @prefixName = stringUtil.getNonNull(userHashMap.get(UserData::PREFIXNAME))
        @firstName = stringUtil.getNonNull(userHashMap.get(UserData::FIRSTNAME))
        @lastName = stringUtil.getNonNull(userHashMap.get(UserData::LASTNAME))
        @middleName = stringUtil.getNonNull(userHashMap.get(UserData::MIDDLENAME))
        @suffixName = stringUtil.getNonNull(userHashMap.get(UserData::SUFFIXNAME))
        @company = stringUtil.getNonNull(userHashMap.get(UserData::COMPANY))
        @positionAtCompany = stringUtil.getNonNull(userHashMap.get(UserData::POSITIONATCOMPANY))
        @mainEmail = stringUtil.getNonNull(userHashMap.get(UserData::MAINEMAIL))
        @secondaryEmail = stringUtil.getNonNull(userHashMap.get(UserData::SECONDARYEMAIL))
        @homePhone = stringUtil.getNonNull(userHashMap.get(UserData::HOMEPHONE))
        @cellPhone = stringUtil.getNonNull(userHashMap.get(UserData::CELLPHONE))
        @workPhone = stringUtil.getNonNull(userHashMap.get(UserData::WORKPHONE))
        @otherContact = stringUtil.getNonNull(userHashMap.get(UserData::OTHERCONTACT))
        @electronicDevice = stringUtil.getNonNull(userHashMap.get(UserData::ELECTRONICDEVICE))
        @fax = stringUtil.getNonNull(userHashMap.get(UserData::FAX))
        @role = UserRoleB.getRole(userHashMap.get(UserRoleData::NAME.to_s))
        @permissions = stringUtil.getNonNull(userHashMap.get(UserData::PERMISSIONS))
        if !stringValidationUtil.isEmpty(@permissions) && (@permissions <=> StoreFrontData.getInstance().NAME) == 0
            @permissions = stringUtil.getNonNull(userHashMap.get(StoreFrontData.getInstance().NAME))
        elsif @permissions == nil
            @permissions = "No Permissions"
        end
        @enable = stringUtil.getNonNull(userHashMap.get(EntryData.getInstance().ENABLE))
    end
    

    def isValid()
        begin
            valid = true
            if !UserName.getInstance().isValid(@userName)
                valid = false
            end
            if !@password.isValid()
                valid = false
            end
            stringValidationUtil = StringValidationUtil.getInstance()
            if !stringValidationUtil.isValidRequired(@firstName, 1, UserData::MAXLEN)
                valid = false
            end
            if !stringValidationUtil.isValidRequired(@lastName, 1, UserData::MAXLEN)
                valid = false
            end
            if !stringValidationUtil.isValidRequired(@mainEmail, 1, UserData::MAXLEN) || (@mainEmail.index("@") || -1) == -1
                valid = false
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VALIDATIONERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put("Failed to validate form", self, commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringValidationUtil = StringValidationUtil.getInstance()
            stringBuffer = StringMaker.new()
            stringBuffer.append(UserName.getValidationInfo(@userName))
            stringBuffer.append(@password.getValidationInfo())
            if !stringValidationUtil.isValidRequired(@firstName, 1, UserData::MAXLEN)
                stringBuffer.append("Please enter a valid First Name.<br />")
            end
            if !stringValidationUtil.isValidRequired(@lastName, 1, UserData::MAXLEN)
                stringBuffer.append("Please enter a valid Last Name.<br />")
            end
            if !stringValidationUtil.isValidRequired(@mainEmail, 1, UserData::MAXLEN) || (@mainEmail.index("@") || -1) == -1
                stringBuffer.append("Please enter a valid email address.<br />")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def setUserName(value)
        @userName = value
    end
    

    def setPrefixName(value)
        @prefixName = value
    end
    

    def setFirstName(value)
        @firstName = value
    end
    

    def setLastName(value)
        @lastName = value
    end
    

    def setMiddleName(value)
        @middleName = value
    end
    

    def setSuffixName(value)
        @suffixName = value
    end
    

    def setCompany(value)
        @company = value
    end
    

    def setPositionAtCompany(value)
        @positionAtCompany = value
    end
    

    def setMainEmail(value)
        @mainEmail = value
    end
    

    def setSecondaryEmail(value)
        @secondaryEmail = value
    end
    

    def setHomePhone(value)
        @homePhone = value
    end
    

    def setCellPhone(value)
        @cellPhone = value
    end
    

    def setWorkPhone(value)
        @workPhone = value
    end
    

    def setOtherContact(value)
        @otherContact = value
    end
    

    def setElectronicContact(value)
        @electronicDevice = value
    end
    

    def setFax(value)
        @fax = value
    end
    

    def setRole(role)
        @role = role
    end
    

    def setPermissions(value)
        @permissions = value
    end
    

    def setEncryption(value)
        @encryption = value
    end
    

    def setSecret(value)
        @secret = value
    end
    

    def setPassword(value)
        @password.set(value)
    end
    

    def enable()
        self.setEnable("Yes")
    end
    

    def disable()
        self.setEnable("No")
    end
    

    def setEnable(enable)
        @enable = enable
    end
    

    def getUserName()
        return @userName
    end
    

    def getPrefixName()
        return @prefixName
    end
    

    def getFirstName()
        return @firstName
    end
    

    def getLastName()
        return @lastName
    end
    

    def getMiddleName()
        return @middleName
    end
    

    def getSuffixName()
        return @suffixName
    end
    

    def getCompany()
        return @company
    end
    

    def getPositionAtCompany()
        return @positionAtCompany
    end
    

    def getMainEmail()
        return @mainEmail
    end
    

    def getSecondaryEmail()
        return @secondaryEmail
    end
    

    def getHomePhone()
        return @homePhone
    end
    

    def getCellPhone()
        return @cellPhone
    end
    

    def getWorkPhone()
        return @workPhone
    end
    

    def getOtherContact()
        return @otherContact
    end
    

    def getElectronicContact()
        return @electronicDevice
    end
    

    def getFax()
        return @fax
    end
    

    def getRole()
        return @role
    end
    

    def getPermissions()
        return @permissions
    end
    

    def getEncryption()
        return @encryption
    end
    

    def getSecret()
        return @secret
    end
    

    def getPassword()
        return @password.get()
    end
    

    # throws Exception
    def toVector()
        values = BasicArrayListD.new()
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
        userConfigurationDomDocumentMapping = UserConfigurationDomDocumentMapping.new(self.getUserConfigurationInterface())
        values.add(userConfigurationDomDocumentMapping.toDomDocumentString())
        values.add(@permissions)
        values.addAllList(@password.toVector(@secret))
        values.add(@enable)
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    

    # throws Exception
    def toHashMap()
        values = StdUtil.getInstance().createHashMap()
        values.put(UserData::USERNAME, @userName)
        values.put(UserData::PREFIXNAME, @prefixName)
        values.put(UserData::FIRSTNAME, @firstName)
        values.put(UserData::LASTNAME, @lastName)
        values.put(UserData::MIDDLENAME, @middleName)
        values.put(UserData::SUFFIXNAME, @suffixName)
        values.put(UserData::COMPANY, @company)
        values.put(UserData::POSITIONATCOMPANY, @positionAtCompany)
        values.put(UserData::MAINEMAIL, @mainEmail)
        values.put(UserData::SECONDARYEMAIL, @secondaryEmail)
        values.put(UserData::HOMEPHONE, @homePhone)
        values.put(UserData::CELLPHONE, @cellPhone)
        values.put(UserData::WORKPHONE, @workPhone)
        values.put(UserData::OTHERCONTACT, @otherContact)
        values.put(UserData::ELECTRONICDEVICE, @electronicDevice)
        values.put(UserData::FAX, @fax)
        if self.getRole() != nil
            values.put(UserRoleData::NAME.to_s, self.getRole().to_s)
        end
        userConfigurationDomDocumentMapping = UserConfigurationDomDocumentMapping.new(self.getUserConfigurationInterface())
        values.put(UserData::CONFIGURATION, userConfigurationDomDocumentMapping.toDomDocumentString())
        values.put(UserData::PERMISSIONS, @permissions)
        values.putAll(@password.toHashMap(@secret))
        values.put(EntryData.getInstance().ENABLE, @enable)
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    

    def toPasswordHashMap()
        return @password.toHashMap(@secret)
    end
    

    def validateSession(weblisketSession)
        weblisketSession.setAuthenticated()
        weblisketSession.setRole(self.getRole())
        weblisketSession.setUserName(self.getUserName())
    end
    

    def updateSession(weblisketSession)
    end
    

    def isSessionValid()
        return true
    end
    

    # throws Exception
    def getKey()
        return @userName
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def getUserConfigurationInterface()
        return @userConfigurationInterface
    end
    

    def setUserConfigurationInterface(userConfigurationInterface)
        @userConfigurationInterface = userConfigurationInterface
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/modules/configuration/UserConfigurationDomDocumentMapping"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterfaceFactory"
require "org/allbinary/business/user/password/Password"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleB"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/business/user/username/UserName"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionData"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

