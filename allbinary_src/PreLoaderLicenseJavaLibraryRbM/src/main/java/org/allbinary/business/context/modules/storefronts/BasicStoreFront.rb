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

require "java/lang/JavaOverload"
require "org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefronts

class BasicStoreFront
    include BasicStoreFrontInterface
    attr_accessor :name, :userName, :basketName, :homeHostName, :homeHostNamePath, :hostName, :hostNamePath, :testHomeHostName, :testHomeHostNamePath, :testHostName, :testHostNamePath, :imagePath, :staticPath, :categoryPath, :inventoryControl, :subStores, :tagLocation, :packageLocation, :ftp, :ftpPath, :ftpUserName, :ftpPassword, :testFtp, :testFtpPath, :testFtpUserName, :testFtpPassword, :timeCreated, :lastModified

    def jfields_org_allbinary_business_context_modules_storefronts_BasicStoreFront
        @name = nil unless instance_variable_defined?(:@name)
        @userName = nil unless instance_variable_defined?(:@userName)
        @basketName = nil unless instance_variable_defined?(:@basketName)
        @homeHostName = nil unless instance_variable_defined?(:@homeHostName)
        @homeHostNamePath = nil unless instance_variable_defined?(:@homeHostNamePath)
        @hostName = nil unless instance_variable_defined?(:@hostName)
        @hostNamePath = nil unless instance_variable_defined?(:@hostNamePath)
        @testHomeHostName = nil unless instance_variable_defined?(:@testHomeHostName)
        @testHomeHostNamePath = nil unless instance_variable_defined?(:@testHomeHostNamePath)
        @testHostName = nil unless instance_variable_defined?(:@testHostName)
        @testHostNamePath = nil unless instance_variable_defined?(:@testHostNamePath)
        @imagePath = nil unless instance_variable_defined?(:@imagePath)
        @staticPath = nil unless instance_variable_defined?(:@staticPath)
        @categoryPath = nil unless instance_variable_defined?(:@categoryPath)
        @inventoryControl = nil unless instance_variable_defined?(:@inventoryControl)
        @subStores = nil unless instance_variable_defined?(:@subStores)
        @tagLocation = nil unless instance_variable_defined?(:@tagLocation)
        @packageLocation = nil unless instance_variable_defined?(:@packageLocation)
        @ftp = nil unless instance_variable_defined?(:@ftp)
        @ftpPath = nil unless instance_variable_defined?(:@ftpPath)
        @ftpUserName = nil unless instance_variable_defined?(:@ftpUserName)
        @ftpPassword = nil unless instance_variable_defined?(:@ftpPassword)
        @testFtp = nil unless instance_variable_defined?(:@testFtp)
        @testFtpPath = nil unless instance_variable_defined?(:@testFtpPath)
        @testFtpUserName = nil unless instance_variable_defined?(:@testFtpUserName)
        @testFtpPassword = nil unless instance_variable_defined?(:@testFtpPassword)
        @timeCreated = nil unless instance_variable_defined?(:@timeCreated)
        @lastModified = nil unless instance_variable_defined?(:@lastModified)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_context_modules_storefronts_BasicStoreFront_0(*args)
        when 1 then jnew_org_allbinary_business_context_modules_storefronts_BasicStoreFront_1(*args)
        else raise ArgumentError, "No constructor of BasicStoreFront takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_context_modules_storefronts_BasicStoreFront_0()
        jfields_org_allbinary_business_context_modules_storefronts_BasicStoreFront
    end
    

    def jnew_org_allbinary_business_context_modules_storefronts_BasicStoreFront_1(storeHashMap)
        jfields_org_allbinary_business_context_modules_storefronts_BasicStoreFront
        storeFrontData = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance()
        @name = storeHashMap.get(storeFrontData.NAME)
        @userName = storeHashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME)
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
        @timeCreated = storeHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        @lastModified = storeHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
    end
    

    def getTestHtmlPath()
        return ::Org::Allbinary::Globals::URLGLOBALS.getTestHtmlPath() + self.getCurrentHostNamePath()
    end
    java_overload :getTestHtmlPath, 0
    

    def getCurrentHostName()
        location = nil
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHostName()
        else
            location = self.getHostName()
        end
        return location
    end
    java_overload :getCurrentHostName, 0
    

    def getCurrentHostNamePath()
        location = nil
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHostNamePath()
        else
            location = self.getHostNamePath()
        end
        return location
    end
    java_overload :getCurrentHostNamePath, 0
    

    def getCurrentHomeHostName()
        location = nil
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostName()
        else
            location = self.getHomeHostName()
        end
        return location
    end
    java_overload :getCurrentHomeHostName, 0
    

    def getCurrentHomeHostNamePath()
        location = nil
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostNamePath()
        else
            location = self.getHomeHostNamePath()
        end
        return location
    end
    java_overload :getCurrentHomeHostNamePath, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def getBasketName()
        return @basketName
    end
    java_overload :getBasketName, 0
    

    def getHomeHostName()
        return @homeHostName
    end
    java_overload :getHomeHostName, 0
    

    def getHomeHostNamePath()
        return @homeHostNamePath
    end
    java_overload :getHomeHostNamePath, 0
    

    def getHostName()
        return @hostName
    end
    java_overload :getHostName, 0
    

    def getHostNamePath()
        return @hostNamePath
    end
    java_overload :getHostNamePath, 0
    

    def getTestHomeHostName()
        return @testHomeHostName
    end
    java_overload :getTestHomeHostName, 0
    

    def getTestHomeHostNamePath()
        return @testHomeHostNamePath
    end
    java_overload :getTestHomeHostNamePath, 0
    

    def getTestHostName()
        return @testHostName
    end
    java_overload :getTestHostName, 0
    

    def getTestHostNamePath()
        return @testHostNamePath
    end
    java_overload :getTestHostNamePath, 0
    

    def getStaticPath()
        return @staticPath
    end
    java_overload :getStaticPath, 0
    

    def getCategoryPath()
        return @categoryPath
    end
    java_overload :getCategoryPath, 0
    

    def getInventoryControl()
        return @inventoryControl
    end
    java_overload :getInventoryControl, 0
    

    # throws Exception
    def getSubStores()
        begin
            tokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SEMICOLON)
            subStoreVector = tokenizer.getTokensFromString(@subStores, ::Org::Allbinary::Util::BasicArrayListD.new())
            return subStoreVector
        rescue StandardError => e
            raise e
        end
    end
    java_overload :getSubStores, 0
    

    def getTagLocation()
        return @tagLocation
    end
    java_overload :getTagLocation, 0
    

    def getPackageLocation()
        return @packageLocation
    end
    java_overload :getPackageLocation, 0
    

    def getFtp()
        return @ftp
    end
    java_overload :getFtp, 0
    

    def getFtpUserName()
        return @ftpUserName
    end
    java_overload :getFtpUserName, 0
    

    def getFtpPassword()
        return @ftpPassword
    end
    java_overload :getFtpPassword, 0
    

    def getTestFtp()
        return @testFtp
    end
    java_overload :getTestFtp, 0
    

    def getTestFtpUserName()
        return @testFtpUserName
    end
    java_overload :getTestFtpUserName, 0
    

    def getTestFtpPassword()
        return @testFtpPassword
    end
    java_overload :getTestFtpPassword, 0
    

    def getFtpPath()
        return @ftpPath
    end
    java_overload :getFtpPath, 0
    

    def getTestFtpPath()
        return @testFtpPath
    end
    java_overload :getTestFtpPath, 0
    

    def getTimeCreated()
        return @timeCreated
    end
    java_overload :getTimeCreated, 0
    

    def getLastModified()
        return @lastModified
    end
    java_overload :getLastModified, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end

end; end; end; end; end; end

