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
# package org.allbinary.business.context.modules.storefront

require "org/allbinary/data/tables/TableMappingInterface"

module StoreFrontInterface
    include TableMappingInterface
    

    def isNameValid()
        raise NotImplementedError
    end
    

    def isValid()
        raise NotImplementedError
    end
    

    def nameValidationInfo()
        raise NotImplementedError
    end
    

    def validationInfo()
        raise NotImplementedError
    end
    

    def getTestHtmlPath()
        raise NotImplementedError
    end
    

    def getCurrentHostName()
        raise NotImplementedError
    end
    

    def getCurrentHostNamePath()
        raise NotImplementedError
    end
    

    def getCurrentHomeHostName()
        raise NotImplementedError
    end
    

    def getCurrentHomeHostNamePath()
        raise NotImplementedError
    end
    

    def getName()
        raise NotImplementedError
    end
    

    def getBasketName()
        raise NotImplementedError
    end
    

    def getHomeHostName()
        raise NotImplementedError
    end
    

    def getHomeHostNamePath()
        raise NotImplementedError
    end
    

    def getHostName()
        raise NotImplementedError
    end
    

    def getHostNamePath()
        raise NotImplementedError
    end
    

    def getTestHomeHostName()
        raise NotImplementedError
    end
    

    def getTestHomeHostNamePath()
        raise NotImplementedError
    end
    

    def getTestHostName()
        raise NotImplementedError
    end
    

    def getTestHostNamePath()
        raise NotImplementedError
    end
    

    def getStaticPath()
        raise NotImplementedError
    end
    

    def getCategoryPath()
        raise NotImplementedError
    end
    

    # throws Exception
    def getSubStores()
        raise NotImplementedError
    end
    

    def getTagLocation()
        raise NotImplementedError
    end
    

    def getPackageLocation()
        raise NotImplementedError
    end
    

    def getInventoryControl()
        raise NotImplementedError
    end
    

    def getContextConfigurationInterface()
        raise NotImplementedError
    end
    

    def setContextConfigurationInterface(contextConfigurationInterface)
        raise NotImplementedError
    end
    

    def getFtp()
        raise NotImplementedError
    end
    

    def getFtpPath()
        raise NotImplementedError
    end
    

    def getFtpUserName()
        raise NotImplementedError
    end
    

    def getFtpPassword()
        raise NotImplementedError
    end
    

    def getTestFtp()
        raise NotImplementedError
    end
    

    def getTestFtpPath()
        raise NotImplementedError
    end
    

    def getTestFtpUserName()
        raise NotImplementedError
    end
    

    def getTestFtpPassword()
        raise NotImplementedError
    end
    

    def getTimeCreated()
        raise NotImplementedError
    end
    

    def getLastModified()
        raise NotImplementedError
    end
    

    def setName(value)
        raise NotImplementedError
    end
    

    def setBasketName(value)
        raise NotImplementedError
    end
    

    def setHomeHostName(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setHomeHostNamePath(value)
        raise NotImplementedError
    end
    

    def setHostName(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setHostNamePath(value)
        raise NotImplementedError
    end
    

    def setTestHomeHostName(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setTestHomeHostNamePath(value)
        raise NotImplementedError
    end
    

    def setTestHostName(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setTestHostNamePath(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setImagePath(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setStaticPath(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setCategoryPath(value)
        raise NotImplementedError
    end
    

    def setPackageLocation(value)
        raise NotImplementedError
    end
    

    def setInventoryControl(value)
        raise NotImplementedError
    end
    

    def setFtp(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setFtpPath(value)
        raise NotImplementedError
    end
    

    def setFtpUserName(value)
        raise NotImplementedError
    end
    

    def setFtpPassword(value)
        raise NotImplementedError
    end
    

    def setTestFtp(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def setTestFtpPath(value)
        raise NotImplementedError
    end
    

    def setTestFtpUserName(value)
        raise NotImplementedError
    end
    

    def setTestFtpPassword(value)
        raise NotImplementedError
    end
    

    def setTimeCreated(value)
        raise NotImplementedError
    end
    

    def setLastModified(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def install(current, total)
        raise NotImplementedError
    end
end

require "org/allbinary/business/context/configuration/ContextConfigurationInterface"
require "org/allbinary/util/BasicArrayList"

