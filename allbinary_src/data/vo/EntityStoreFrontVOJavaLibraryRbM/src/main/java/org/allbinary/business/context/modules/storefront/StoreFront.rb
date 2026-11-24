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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront

class StoreFront
    include StoreFrontInterface
    attr_accessor :logUtil, :commonStrings, :directory, :stringUtil, :abPathUtil, :name, :basketName, :homeHostName, :homeHostNamePath, :hostName, :hostNamePath, :testHomeHostName, :testHomeHostNamePath, :testHostName, :testHostNamePath, :imagePath, :staticPath, :categoryPath, :inventoryControl, :contextConfigurationInterface, :subStores, :tagLocation, :packageLocation, :ftp, :ftpPath, :ftpUserName, :ftpPassword, :testFtp, :testFtpPath, :testFtpUserName, :testFtpPassword, :timeCreated, :lastModified, :MINCHAR, :MINSTORENAMELENGTH, :MAXCHAR, :EMPTY_STRING, :ONE_EMPTY_STRING_ARRAY

    def jfields_org_allbinary_business_context_modules_storefront_StoreFront
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @abPathUtil = ::Org::Allbinary::Logic::Io::Path::AbPathUtil.getInstance()
        @name = @stringUtil.EMPTY_STRING
        @basketName = @stringUtil.EMPTY_STRING
        @homeHostName = @stringUtil.EMPTY_STRING
        @homeHostNamePath = @abPathUtil.NO_ABPATH
        @hostName = @stringUtil.EMPTY_STRING
        @hostNamePath = @abPathUtil.NO_ABPATH
        @testHomeHostName = @stringUtil.EMPTY_STRING
        @testHomeHostNamePath = @abPathUtil.NO_ABPATH
        @testHostName = @stringUtil.EMPTY_STRING
        @testHostNamePath = @abPathUtil.NO_ABPATH
        @imagePath = @abPathUtil.NO_ABPATH
        @staticPath = @abPathUtil.NO_ABPATH
        @categoryPath = @abPathUtil.NO_ABPATH
        @inventoryControl = @stringUtil.EMPTY_STRING
        @contextConfigurationInterface = nil unless instance_variable_defined?(:@contextConfigurationInterface)
        @subStores = @stringUtil.EMPTY_STRING
        @tagLocation = @stringUtil.EMPTY_STRING
        @packageLocation = @stringUtil.EMPTY_STRING
        @ftp = @stringUtil.EMPTY_STRING
        @ftpPath = @abPathUtil.NO_ABPATH
        @ftpUserName = @stringUtil.EMPTY_STRING
        @ftpPassword = @stringUtil.EMPTY_STRING
        @testFtp = @stringUtil.EMPTY_STRING
        @testFtpPath = @abPathUtil.NO_ABPATH
        @testFtpUserName = @stringUtil.EMPTY_STRING
        @testFtpPassword = @stringUtil.EMPTY_STRING
        @timeCreated = @stringUtil.EMPTY_STRING
        @lastModified = @stringUtil.EMPTY_STRING
        @MINCHAR = 0
        @MINSTORENAMELENGTH = 1
        @MAXCHAR = 255
        @EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @ONE_EMPTY_STRING_ARRAY = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_context_modules_storefront_StoreFront_0(*args)
        when 1 then jnew_org_allbinary_business_context_modules_storefront_StoreFront_1(*args)
        else raise ArgumentError, "No constructor of StoreFront takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_context_modules_storefront_StoreFront_1(*java_overload_args)
        return jnew_org_allbinary_business_context_modules_storefront_StoreFront_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_business_context_modules_storefront_StoreFront_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_context_modules_storefront_StoreFront_0()
        jfields_org_allbinary_business_context_modules_storefront_StoreFront
        @contextConfigurationInterface = ::Org::Allbinary::Business::Context::Configuration::ContextConfiguration.new()
    end
    

    def jnew_org_allbinary_business_context_modules_storefront_StoreFront_1_1(request)
        jfields_org_allbinary_business_context_modules_storefront_StoreFront
        self.getFormData(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(request).toHashMap())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("TWB- needs update for adding and updating context configuration - currently defaults to admin context config", self, "StoreFront")
        end
        self.setContextConfigurationInterface(::Org::Allbinary::Business::Context::Configuration::ContextConfigurationInterfaceFactory.getInstance().getInstance("Admin"))
    end
    

    def jnew_org_allbinary_business_context_modules_storefront_StoreFront_1_2(hashMap)
        jfields_org_allbinary_business_context_modules_storefront_StoreFront
        self.getFormData(hashMap)
        domDocumentString = hashMap.get(StoreFrontData.getInstance().CONFIGURATION)
        if domDocumentString == nil
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(domDocumentString)
            self.setContextConfigurationInterface(::Org::Allbinary::Business::Context::Configuration::ContextConfigurationInterfaceFactory.getInstance().getInstance(document))
        end
    end
    

    def isColumn(columnName)
        if (columnName <=> StoreFrontData.getInstance().NAME) == 0 || (columnName <=> ::Org::Allbinary::Business::User::UserData::MAINEMAIL) == 0
            return true
        else
            return false
        end
    end
    java_overload :isColumn, 1
    

    # throws Exception
    def createPath_j2(key, hashMap)
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.create(@EMPTY_STRING, key, hashMap), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def createPath_j3(append, key, hashMap)
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.create(append, key, hashMap), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end

    def createPath(*java_overload_args)
        return createPath_j2(*java_overload_args) if java_overload_args.length == 2
        return createPath_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method createPath takes #{java_overload_args.length} arguments"
    end
    

    def get(key, hashMap)
        return self.create(@EMPTY_STRING, key, hashMap)
    end
    java_overload :get, 2
    

    def create(append, key, hashMap)
        path = hashMap.get(key)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(path)
            return @EMPTY_STRING
        else
            if self.isColumn(path)
                return (hashMap.get(path)).to_s + append
            else
                return path
            end
        end
    end
    java_overload :create, 3
    

    # throws Exception
    def getFormData(storeHashMap)
        storeFrontData = StoreFrontData.getInstance()
        @name = storeHashMap.get(storeFrontData.NAME)
        @basketName = storeHashMap.get(storeFrontData.NAME)
        @homeHostName = storeHashMap.get(storeFrontData.HOMEHOSTNAME)
        @homeHostNamePath = self.createPath(storeFrontData.HOMEHOSTNAMEPATH, storeHashMap)
        @hostName = storeHashMap.get(storeFrontData.HOSTNAME)
        @hostNamePath = self.createPath(storeFrontData.HOSTNAMEPATH, storeHashMap)
        @testHomeHostName = storeHashMap.get(storeFrontData.TESTHOMEHOSTNAME)
        @testHomeHostNamePath = self.createPath(storeFrontData.TESTHOMEHOSTNAMEPATH, storeHashMap)
        @testHostName = storeHashMap.get(storeFrontData.TESTHOSTNAME)
        @testHostNamePath = self.createPath(storeFrontData.TESTHOSTNAMEPATH, storeHashMap)
        @imagePath = self.createPath(StoreFront::RESOURCES, storeFrontData.IMAGEPATH, storeHashMap)
        @staticPath = self.createPath(" Products" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s, storeFrontData.STATICPATH, storeHashMap)
        @categoryPath = self.createPath(StoreFront::RESOURCES, storeFrontData.CATEGORYPATH, storeHashMap)
        @inventoryControl = storeHashMap.get(storeFrontData.INVENTORYCONTROL)
        @subStores = storeHashMap.get(storeFrontData.SUBSTORES)
        @tagLocation = storeHashMap.get(storeFrontData.TAGLOCATION)
        @packageLocation = storeHashMap.get(storeFrontData.PACKAGELOCATION)
        @ftp = storeHashMap.get(storeFrontData.FTP)
        @ftpPath = self.createPath(storeFrontData.FTPPATH, storeHashMap)
        @ftpUserName = storeHashMap.get(storeFrontData.FTPUSERNAME)
        @ftpPassword = storeHashMap.get(storeFrontData.FTPPASSWORD)
        @testFtp = storeHashMap.get(storeFrontData.TESTFTP)
        @testFtpPath = self.createPath(storeFrontData.TESTFTPPATH, storeHashMap)
        @testFtpUserName = storeHashMap.get(storeFrontData.TESTFTPUSERNAME)
        @testFtpPassword = storeHashMap.get(storeFrontData.TESTFTPPASSWORD)
        @timeCreated = storeHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        @lastModified = storeHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
    end
    java_overload :getFormData, 1
    

    def isNameValid()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@name, @MINSTORENAMELENGTH, @MAXCHAR)
            return false
        else
            isEscapedCharactersContained = false
            storeNameEscaped = ::Org::Apache::Commons::Lang3::StringEscapeUtils.escapeHtml3(@name)
            if (@name <=> storeNameEscaped) != 0
                isEscapedCharactersContained = true
            end
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            isSpacesContained = false
            if stringValidationUtil.containsSpaces(@name)
                isSpacesContained = true
            end
            if isSpacesContained || isEscapedCharactersContained
                hashMap = ::Org::Allbinary::Logic::StringPackage::SpecialCharacterUtil.getHashMap()
                hashMap.put([::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE], @ONE_EMPTY_STRING_ARRAY)
                @name = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(hashMap).all(@name)
            end
        end
        return true
    end
    java_overload :isNameValid, 0
    

    def isValid()
        valid = true
        valid = self.isNameValid()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@basketName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@homeHostName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@homeHostNamePath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@hostName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@hostNamePath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testHomeHostName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testHomeHostNamePath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testHostName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testHostNamePath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@imagePath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@staticPath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@categoryPath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@inventoryControl, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@subStores, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@tagLocation, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidRequired(@packageLocation, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@ftp, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@ftpPath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@ftpUserName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@ftpPassword, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testFtp, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testFtpPath.to_s, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testFtpUserName, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if !stringValidationUtil.isValidNotRequired(@testFtpPassword, @MINCHAR, @MAXCHAR)
            valid = false
        end
        if valid == true
            return true
        else
            return false
        end
    end
    java_overload :isValid, 0
    

    def nameValidationInfo()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@name, @MINCHAR, @MAXCHAR)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Name is invalid. Must be < ")
            stringBuffer.appendint(@MAXCHAR)
            stringBuffer.append(" and > 0 characters.<br>")
            return stringBuffer.to_s
        end
        return @EMPTY_STRING
    end
    java_overload :nameValidationInfo, 0
    

    def validationInfo()
        begin
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(self.nameValidationInfo())
            if !stringValidationUtil.isValidRequired(@basketName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Basket name is invalid. Must be < ")
                stringBuffer.appendint(@MAXCHAR)
                stringBuffer.append(" and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@homeHostName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Home host name is invalid. Must be < ")
                stringBuffer.appendint(@MAXCHAR)
                stringBuffer.append(" and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@homeHostNamePath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Home host name path is invalid. Must be < ")
                stringBuffer.appendint(@MAXCHAR)
                stringBuffer.append(" and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@hostName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Host name is invalid. Must be < ")
                stringBuffer.appendint(@MAXCHAR)
                stringBuffer.append(" and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@hostNamePath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Host name path is invalid. Must be < ")
                stringBuffer.appendint(@MAXCHAR)
                stringBuffer.append(" and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testHomeHostName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test home host name is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testHomeHostNamePath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test home host name path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testHostName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test host name is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testHostNamePath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test host name path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@imagePath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Image path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@staticPath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Static path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@categoryPath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Category path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@inventoryControl, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Inventory control is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@subStores, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Sub stores is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@tagLocation, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Tag location is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidRequired(@packageLocation, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Package location is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@ftp, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Ftp is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@ftpPath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Ftp path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@ftpUserName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Ftp username is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@ftpPassword, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Ftp password is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testFtp, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test ftp is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testFtpPath.to_s, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test ftp Path is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testFtpUserName, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test ftp username is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
            end
            if !stringValidationUtil.isValidNotRequired(@testFtpPassword, @MINCHAR, @MAXCHAR)
                stringBuffer.append("Test ftp password is invalid. Must be < " + (@MAXCHAR).to_s + " and > 0 characters.<br>")
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
    

    def getTestHtmlPath()
        return ::Org::Allbinary::Globals::URLGLOBALS.getTestHtmlPath() + self.getCurrentHostNamePath()
    end
    java_overload :getTestHtmlPath, 0
    

    def getCurrentHostName()
        location = @EMPTY_STRING
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHostName()
        else
            location = self.getHostName()
        end
        return location
    end
    java_overload :getCurrentHostName, 0
    

    def getCurrentHostNamePath()
        location = @EMPTY_STRING
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHostNamePath()
        else
            location = self.getHostNamePath()
        end
        return location
    end
    java_overload :getCurrentHostNamePath, 0
    

    def getCurrentHomeHostName()
        location = @EMPTY_STRING
        if ::Org::Allbinary::Globals::URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostName()
        else
            location = self.getHomeHostName()
        end
        return location
    end
    java_overload :getCurrentHomeHostName, 0
    

    def getCurrentHomeHostNamePath()
        location = @EMPTY_STRING
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
    

    def getBasketName()
        return @basketName
    end
    java_overload :getBasketName, 0
    

    def getHomeHostName()
        return @homeHostName
    end
    java_overload :getHomeHostName, 0
    

    def getHomeHostNamePath()
        return @homeHostNamePath.to_s
    end
    java_overload :getHomeHostNamePath, 0
    

    def getHostName()
        return @hostName
    end
    java_overload :getHostName, 0
    

    def getHostNamePath()
        return @hostNamePath.to_s
    end
    java_overload :getHostNamePath, 0
    

    def getTestHomeHostName()
        return @testHomeHostName
    end
    java_overload :getTestHomeHostName, 0
    

    def getTestHomeHostNamePath()
        return @testHomeHostNamePath.to_s
    end
    java_overload :getTestHomeHostNamePath, 0
    

    def getTestHostName()
        return @testHostName
    end
    java_overload :getTestHostName, 0
    

    def getTestHostNamePath()
        return @testHostNamePath.to_s
    end
    java_overload :getTestHostNamePath, 0
    

    def getStaticPath()
        return @staticPath.to_s
    end
    java_overload :getStaticPath, 0
    

    def getCategoryPath()
        return @categoryPath.to_s
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
    

    def getPackageLocation_j0()
        return @packageLocation
    end
    

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
        return @ftpPath.to_s
    end
    java_overload :getFtpPath, 0
    

    def getTestFtpPath()
        return @testFtpPath.to_s
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
    

    def setName(value)
        @name = value
    end
    java_overload :setName, 1
    

    def setBasketName(value)
        @basketName = value
    end
    java_overload :setBasketName, 1
    

    def setHomeHostName(value)
        @homeHostName = value
    end
    java_overload :setHomeHostName, 1
    

    # throws Exception
    def setHomeHostNamePath(value)
        @homeHostNamePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setHomeHostNamePath, 1
    

    def setHostName(value)
        @hostName = value
    end
    java_overload :setHostName, 1
    

    # throws Exception
    def setHostNamePath(value)
        @hostNamePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setHostNamePath, 1
    

    def setTestHomeHostName(value)
        @testHomeHostName = value
    end
    java_overload :setTestHomeHostName, 1
    

    # throws Exception
    def setTestHomeHostNamePath(value)
        @testHomeHostNamePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setTestHomeHostNamePath, 1
    

    def setTestHostName(value)
        @testHostName = value
    end
    java_overload :setTestHostName, 1
    

    # throws Exception
    def setTestHostNamePath(value)
        @testHostNamePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setTestHostNamePath, 1
    

    # throws Exception
    def setImagePath(value)
        @imagePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setImagePath, 1
    

    # throws Exception
    def setStaticPath(value)
        @staticPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setStaticPath, 1
    

    # throws Exception
    def setCategoryPath(value)
        @categoryPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setCategoryPath, 1
    

    def setSubStores(value)
        @subStores = value
    end
    java_overload :setSubStores, 1
    

    def setTagLocation(value)
        @tagLocation = value
    end
    java_overload :setTagLocation, 1
    

    def setPackageLocation(value)
        @packageLocation = value
    end
    java_overload :setPackageLocation, 1
    

    def setInventoryControl(value)
        @inventoryControl = value
    end
    java_overload :setInventoryControl, 1
    

    def getPackageLocation_j1(value)
        @packageLocation = value
    end

    def getPackageLocation(*java_overload_args)
        return getPackageLocation_j0(*java_overload_args) if java_overload_args.length == 0
        return getPackageLocation_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getPackageLocation takes #{java_overload_args.length} arguments"
    end
    

    def setFtp(value)
        @ftp = value
    end
    java_overload :setFtp, 1
    

    def setFtpUserName(value)
        @ftpUserName = value
    end
    java_overload :setFtpUserName, 1
    

    def setFtpPassword(value)
        @ftpPassword = value
    end
    java_overload :setFtpPassword, 1
    

    def setTestFtp(value)
        @testFtp = value
    end
    java_overload :setTestFtp, 1
    

    def setTestFtpUserName(value)
        @testFtpUserName = value
    end
    java_overload :setTestFtpUserName, 1
    

    def setTestFtpPassword(value)
        @testFtpPassword = value
    end
    java_overload :setTestFtpPassword, 1
    

    def setTimeCreated(value)
        @timeCreated = value
    end
    java_overload :setTimeCreated, 1
    

    def setLastModified(value)
        @lastModified = value
    end
    java_overload :setLastModified, 1
    

    # throws Exception
    def setFtpPath(value)
        @ftpPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setFtpPath, 1
    

    # throws Exception
    def setTestFtpPath(value)
        @testFtpPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(value, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    java_overload :setTestFtpPath, 1
    

    # throws Exception
    def createDirectories()
        storeAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        if !@directory.create(storeAbPath)
            return false
        end
        if !@directory.create(::Org::Allbinary::Logic::Io::Path::AbPath.new(storeAbPath + self.getCategoryPath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
            return false
        end
        if !@directory.create(::Org::Allbinary::Logic::Io::Path::AbPath.new(storeAbPath + self.getStaticPath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
            return false
        end
        return true
    end
    java_overload :createDirectories, 0
    

    # throws Exception
    def install(current, total)
        begin
            if !self.createDirectories()
                raise StandardError.new("Unable to create store directories")
            end
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
            stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            viewPath = stringBuffer.to_s
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH)
            fromDirectoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append("special")
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            fromSpecialDirectoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append(self.getName())
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            toDirectoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            if current == 0
                if !@directory.create(toDirectoryAbPath)
                    raise StandardError.new("Unable to create store view directory: " + toDirectoryAbPath.to_s)
                end
            end
            viewTotal = (total * 85) / 100
            installTotal = (total * 93) / 100
            if current < viewTotal
                file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(fromSpecialDirectoryAbPath)
                if file.isDirectory()
                    halfViewTotal = viewTotal / 2
                    if current < halfViewTotal
                        self.installViews(fromSpecialDirectoryAbPath, toDirectoryAbPath, current, halfViewTotal)
                    elsif current < viewTotal
                        self.installViews(fromDirectoryAbPath, toDirectoryAbPath, current - halfViewTotal, viewTotal - halfViewTotal)
                    end
                else
                    self.installViews(fromDirectoryAbPath, toDirectoryAbPath, current, viewTotal)
                end
            elsif current < installTotal
                self.installResources(fromDirectoryAbPath, current - viewTotal, installTotal - viewTotal)
            else
                self.installMedia(fromDirectoryAbPath, current - installTotal, total - installTotal)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "install()", e)
            end
            raise e
        end
    end
    java_overload :install, 2
    

    # throws Exception
    def installViews(fromDirectoryAbPath, toDirectoryAbPath, current, total)
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copyDirectoryPortion(fromDirectoryAbPath, toDirectoryAbPath, true, false, current, total)
    end
    java_overload :installViews, 4
    

    # throws Exception
    def installResources(fromDirectoryAbPath, current, total)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(fromDirectoryAbPath.to_s)
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("Resources")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        installCategoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(self.getCurrentHomeHostNamePath())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(self.getCategoryPath())
        categoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copyDirectoryPortion(installCategoryAbPath, categoryAbPath, true, false, current, total)
    end
    java_overload :installResources, 3
    

    # throws Exception
    def installMedia(fromDirectoryAbPath, current, total)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(fromDirectoryAbPath.to_s)
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().TEMPLATEPATH)
        stringBuffer.append("images")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        viewStoreImagesDirectoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        storeAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copyDirectoryPortion(viewStoreImagesDirectoryAbPath, storeAbPath, true, false, current, total)
    end
    java_overload :installMedia, 3
    

    # throws Exception
    def toVector()
        dataVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        dataVector.add(@name)
        dataVector.add(@homeHostName)
        dataVector.add(@homeHostNamePath.to_s)
        dataVector.add(@hostName)
        dataVector.add(@hostNamePath.to_s)
        dataVector.add(@testHomeHostName)
        dataVector.add(@testHomeHostNamePath.to_s)
        dataVector.add(@testHostName)
        dataVector.add(@testHostNamePath.to_s)
        dataVector.add(@imagePath.to_s)
        dataVector.add(@staticPath.to_s)
        dataVector.add(@categoryPath.to_s)
        dataVector.add(@inventoryControl)
        contextConfigurationDomDocumentMapping = ::Org::Allbinary::Business::Context::Configuration::ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
        dataVector.add(contextConfigurationDomDocumentMapping.toDomDocumentString())
        dataVector.add(@subStores)
        dataVector.add(@tagLocation)
        dataVector.add(@packageLocation)
        dataVector.add(@ftp)
        dataVector.add(@ftpPath.to_s)
        dataVector.add(@ftpUserName)
        dataVector.add(@ftpPassword)
        dataVector.add(@testFtp)
        dataVector.add(@testFtpPath.to_s)
        dataVector.add(@testFtpUserName)
        dataVector.add(@testFtpPassword)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        dataVector.add(time)
        dataVector.add(time)
        return dataVector
    end
    java_overload :toVector, 0
    

    # throws Exception
    def toHashMap()
        storeFrontData = StoreFrontData.getInstance()
        dataHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        dataHashMap.put(storeFrontData.NAME, @name)
        dataHashMap.put(storeFrontData.HOMEHOSTNAME, @homeHostName)
        dataHashMap.put(storeFrontData.HOMEHOSTNAMEPATH, @homeHostNamePath.to_s)
        dataHashMap.put(storeFrontData.HOSTNAME, @hostName)
        dataHashMap.put(storeFrontData.HOSTNAMEPATH, @hostNamePath.to_s)
        dataHashMap.put(storeFrontData.TESTHOMEHOSTNAME, @testHomeHostName)
        dataHashMap.put(storeFrontData.TESTHOMEHOSTNAMEPATH, @testHomeHostNamePath.to_s)
        dataHashMap.put(storeFrontData.TESTHOSTNAME, @testHostName)
        dataHashMap.put(storeFrontData.TESTHOSTNAMEPATH, @testHostNamePath.to_s)
        dataHashMap.put(storeFrontData.IMAGEPATH, @imagePath.to_s)
        dataHashMap.put(storeFrontData.STATICPATH, @staticPath.to_s)
        dataHashMap.put(storeFrontData.CATEGORYPATH, @categoryPath.to_s)
        dataHashMap.put(storeFrontData.INVENTORYCONTROL, @inventoryControl)
        contextConfigurationDomDocumentMapping = ::Org::Allbinary::Business::Context::Configuration::ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
        dataHashMap.put(storeFrontData.CONFIGURATION, contextConfigurationDomDocumentMapping.toDomDocumentString())
        dataHashMap.put(storeFrontData.SUBSTORES, @subStores)
        dataHashMap.put(storeFrontData.TAGLOCATION, @tagLocation)
        dataHashMap.put(storeFrontData.PACKAGELOCATION, @packageLocation)
        dataHashMap.put(storeFrontData.FTP, @ftp)
        dataHashMap.put(storeFrontData.FTPPATH, @ftpPath.to_s)
        dataHashMap.put(storeFrontData.FTPUSERNAME, @ftpUserName)
        dataHashMap.put(storeFrontData.FTPPASSWORD, @ftpPassword)
        dataHashMap.put(storeFrontData.TESTFTP, @testFtp)
        dataHashMap.put(storeFrontData.TESTFTPPATH, @testFtpPath.to_s)
        dataHashMap.put(storeFrontData.TESTFTPUSERNAME, @testFtpUserName)
        dataHashMap.put(storeFrontData.TESTFTPPASSWORD, @testFtpPassword)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        dataHashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return dataHashMap
    end
    java_overload :toHashMap, 0
    

    def getKey()
        return self.getName()
    end
    java_overload :getKey, 0
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    java_overload :getContextConfigurationInterface, 0
    

    def setContextConfigurationInterface(contextConfigurationInterface)
        @contextConfigurationInterface = contextConfigurationInterface
    end
    java_overload :setContextConfigurationInterface, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:RESOURCES, " Resources" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFront"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:RESOURCES].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfiguration, "org/allbinary/business/context/configuration/ContextConfiguration" unless const_defined?(:ContextConfiguration, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationDomDocumentMapping, "org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping" unless const_defined?(:ContextConfigurationDomDocumentMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface" unless const_defined?(:ContextConfigurationInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Configuration; autoload :ContextConfigurationInterfaceFactory, "org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory" unless const_defined?(:ContextConfigurationInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathUtil, "org/allbinary/logic/io/path/AbPathUtil" unless const_defined?(:AbPathUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :SpecialCharacterUtil, "org/allbinary/logic/string/SpecialCharacterUtil" unless const_defined?(:SpecialCharacterUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Apache; module Commons; module Lang3; autoload :StringEscapeUtils, "org/apache/commons/lang3/StringEscapeUtils" unless const_defined?(:StringEscapeUtils, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false)

begin
    StoreFront.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

