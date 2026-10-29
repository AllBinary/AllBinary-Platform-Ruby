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
# package org.allbinary.business.context.modules.storefronts

require "org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface"

class BasicStoreFront
    include BasicStoreFrontInterface
    attr_accessor :name, :userName, :basketName, :homeHostName, :homeHostNamePath, :hostName, :hostNamePath, :testHomeHostName, :testHomeHostNamePath, :testHostName, :testHostNamePath, :imagePath, :staticPath, :categoryPath, :inventoryControl, :subStores, :tagLocation, :packageLocation, :ftp, :ftpPath, :ftpUserName, :ftpPassword, :testFtp, :testFtpPath, :testFtpUserName, :testFtpPassword, :timeCreated, :lastModified

    def initialize_fields
        @name = nil
        @userName = nil
        @basketName = nil
        @homeHostName = nil
        @homeHostNamePath = nil
        @hostName = nil
        @hostNamePath = nil
        @testHomeHostName = nil
        @testHomeHostNamePath = nil
        @testHostName = nil
        @testHostNamePath = nil
        @imagePath = nil
        @staticPath = nil
        @categoryPath = nil
        @inventoryControl = nil
        @subStores = nil
        @tagLocation = nil
        @packageLocation = nil
        @ftp = nil
        @ftpPath = nil
        @ftpUserName = nil
        @ftpPassword = nil
        @testFtp = nil
        @testFtpPath = nil
        @testFtpUserName = nil
        @testFtpPassword = nil
        @timeCreated = nil
        @lastModified = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(storeHashMap)
        initialize_fields
        storeFrontData = StoreFrontData.getInstance()
        @name = storeHashMap.get(storeFrontData.NAME)
        @userName = storeHashMap.get(UserData::USERNAME)
        @basketName = storeHashMap.get(storeFrontData.NAME)
        @homeHostName = storeHashMap.get(storeFrontData.HOMEHOSTNAME)
        @homeHostNamePath = storeHashMap.get(storeFrontData.HOMEHOSTNAMEPATH)
        @hostName = storeHashMap.get(storeFrontData.HOSTNAME)
        @hostNamePath = storeHashMap.get(storeFrontData.HOSTNAMEPATH)
        @testHomeHostName = storeHashMap.get(storeFrontData.TESTHOMEHOSTNAME)
        @testHomeHostNamePath = storeHashMap.get(storeFrontData.TESTHOMEHOSTNAMEPATH)
        @testHostName = storeHashMap.get(storeFrontData.TESTHOSTNAME)
        @testHostNamePath = storeHashMap.get(storeFrontData.TESTHOSTNAMEPATH)
        @imagePath = storeHashMap.get(storeFrontData.IMAGEPATH)
        @staticPath = storeHashMap.get(storeFrontData.STATICPATH)
        @categoryPath = storeHashMap.get(storeFrontData.CATEGORYPATH)
        @inventoryControl = storeHashMap.get(storeFrontData.INVENTORYCONTROL)
        @subStores = storeHashMap.get(storeFrontData.SUBSTORES)
        @tagLocation = storeHashMap.get(storeFrontData.TAGLOCATION)
        @packageLocation = storeHashMap.get(storeFrontData.PACKAGELOCATION)
        @ftp = storeHashMap.get(storeFrontData.FTP)
        @ftpPath = storeHashMap.get(storeFrontData.FTPPATH)
        @ftpUserName = storeHashMap.get(storeFrontData.FTPUSERNAME)
        @ftpPassword = storeHashMap.get(storeFrontData.FTPPASSWORD)
        @testFtp = storeHashMap.get(storeFrontData.TESTFTP)
        @testFtpPath = storeHashMap.get(storeFrontData.TESTFTPPATH)
        @testFtpUserName = storeHashMap.get(storeFrontData.TESTFTPUSERNAME)
        @testFtpPassword = storeHashMap.get(storeFrontData.TESTFTPPASSWORD)
        @timeCreated = storeHashMap.get(EntryData.getInstance().TIMECREATED)
        @lastModified = storeHashMap.get(EntryData.getInstance().LASTMODIFIED)
    end
    

    def getTestHtmlPath()
        return org.allbinary.globals.URLGLOBALS.getTestHtmlPath() + self.getCurrentHostNamePath()
    end
    

    def getCurrentHostName()
        location = nil
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHostName()
        else
            location = self.getHostName()
        end
        return location
    end
    

    def getCurrentHostNamePath()
        location = nil
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHostNamePath()
        else
            location = self.getHostNamePath()
        end
        return location
    end
    

    def getCurrentHomeHostName()
        location = nil
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostName()
        else
            location = self.getHomeHostName()
        end
        return location
    end
    

    def getCurrentHomeHostNamePath()
        location = nil
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostNamePath()
        else
            location = self.getHomeHostNamePath()
        end
        return location
    end
    

    def getName()
        return @name
    end
    

    def getUserName()
        return @userName
    end
    

    def getBasketName()
        return @basketName
    end
    

    def getHomeHostName()
        return @homeHostName
    end
    

    def getHomeHostNamePath()
        return @homeHostNamePath
    end
    

    def getHostName()
        return @hostName
    end
    

    def getHostNamePath()
        return @hostNamePath
    end
    

    def getTestHomeHostName()
        return @testHomeHostName
    end
    

    def getTestHomeHostNamePath()
        return @testHomeHostNamePath
    end
    

    def getTestHostName()
        return @testHostName
    end
    

    def getTestHostNamePath()
        return @testHostNamePath
    end
    

    def getStaticPath()
        return @staticPath
    end
    

    def getCategoryPath()
        return @categoryPath
    end
    

    def getInventoryControl()
        return @inventoryControl
    end
    

    # throws Exception
    def getSubStores()
        begin
            tokenizer = Tokenizer.new(CommonSeps.getInstance().SEMICOLON)
            subStoreVector = tokenizer.getTokensFromString(@subStores, BasicArrayListD.new())
            return subStoreVector
        rescue StandardError => e
            raise e
        end
    end
    

    def getTagLocation()
        return @tagLocation
    end
    

    def getPackageLocation()
        return @packageLocation
    end
    

    def getFtp()
        return @ftp
    end
    

    def getFtpUserName()
        return @ftpUserName
    end
    

    def getFtpPassword()
        return @ftpPassword
    end
    

    def getTestFtp()
        return @testFtp
    end
    

    def getTestFtpUserName()
        return @testFtpUserName
    end
    

    def getTestFtpPassword()
        return @testFtpPassword
    end
    

    def getFtpPath()
        return @ftpPath
    end
    

    def getTestFtpPath()
        return @testFtpPath
    end
    

    def getTimeCreated()
        return @timeCreated
    end
    

    def getLastModified()
        return @lastModified
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

