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
# package org.allbinary.business.user

require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"

module UserInterface
    include TableMappingInterface
    include ValidationInterface
    

    def setUserName(value)
        raise NotImplementedError
    end
    

    def setPrefixName(value)
        raise NotImplementedError
    end
    

    def setFirstName(value)
        raise NotImplementedError
    end
    

    def setLastName(value)
        raise NotImplementedError
    end
    

    def setMiddleName(value)
        raise NotImplementedError
    end
    

    def setSuffixName(value)
        raise NotImplementedError
    end
    

    def setCompany(value)
        raise NotImplementedError
    end
    

    def setPositionAtCompany(value)
        raise NotImplementedError
    end
    

    def setMainEmail(value)
        raise NotImplementedError
    end
    

    def setSecondaryEmail(value)
        raise NotImplementedError
    end
    

    def setHomePhone(value)
        raise NotImplementedError
    end
    

    def setCellPhone(value)
        raise NotImplementedError
    end
    

    def setWorkPhone(value)
        raise NotImplementedError
    end
    

    def setOtherContact(value)
        raise NotImplementedError
    end
    

    def setElectronicContact(value)
        raise NotImplementedError
    end
    

    def setFax(value)
        raise NotImplementedError
    end
    

    def setRole(aRole)
        raise NotImplementedError
    end
    

    def setEncryption(value)
        raise NotImplementedError
    end
    

    def setSecret(value)
        raise NotImplementedError
    end
    

    def setPassword(value)
        raise NotImplementedError
    end
    

    def setPermissions(value)
        raise NotImplementedError
    end
    

    def enable()
        raise NotImplementedError
    end
    

    def setEnable(enable)
        raise NotImplementedError
    end
    

    def getUserName()
        raise NotImplementedError
    end
    

    def getPrefixName()
        raise NotImplementedError
    end
    

    def getFirstName()
        raise NotImplementedError
    end
    

    def getLastName()
        raise NotImplementedError
    end
    

    def getMiddleName()
        raise NotImplementedError
    end
    

    def getSuffixName()
        raise NotImplementedError
    end
    

    def getCompany()
        raise NotImplementedError
    end
    

    def getPositionAtCompany()
        raise NotImplementedError
    end
    

    def getMainEmail()
        raise NotImplementedError
    end
    

    def getSecondaryEmail()
        raise NotImplementedError
    end
    

    def getHomePhone()
        raise NotImplementedError
    end
    

    def getCellPhone()
        raise NotImplementedError
    end
    

    def getWorkPhone()
        raise NotImplementedError
    end
    

    def getOtherContact()
        raise NotImplementedError
    end
    

    def getElectronicContact()
        raise NotImplementedError
    end
    

    def getFax()
        raise NotImplementedError
    end
    

    def getRole()
        raise NotImplementedError
    end
    

    def getEncryption()
        raise NotImplementedError
    end
    

    def getSecret()
        raise NotImplementedError
    end
    

    def getPassword()
        raise NotImplementedError
    end
    

    def getPermissions()
        raise NotImplementedError
    end
    

    def getUserConfigurationInterface()
        raise NotImplementedError
    end
    

    def setUserConfigurationInterface(userConfigurationInterface)
        raise NotImplementedError
    end
    

    def toPasswordHashMap()
        raise NotImplementedError
    end
    

    def validateSession(weblisketSession)
        raise NotImplementedError
    end
    

    def updateSession(weblisketSession)
        raise NotImplementedError
    end
    

    def isSessionValid()
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"

