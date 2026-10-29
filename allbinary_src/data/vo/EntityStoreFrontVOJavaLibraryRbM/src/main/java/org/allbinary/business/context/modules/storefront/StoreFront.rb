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

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"

class StoreFront
    include StoreFrontInterface
    attr_accessor :logUtil, :commonStrings, :directory, :stringUtil, :abPathUtil, :name, :basketName, :homeHostName, :homeHostNamePath, :hostName, :hostNamePath, :testHomeHostName, :testHomeHostNamePath, :testHostName, :testHostNamePath, :imagePath, :staticPath, :categoryPath, :inventoryControl, :contextConfigurationInterface, :subStores, :tagLocation, :packageLocation, :ftp, :ftpPath, :ftpUserName, :ftpPassword, :testFtp, :testFtpPath, :testFtpUserName, :testFtpPassword, :timeCreated, :lastModified, :MINCHAR, :MINSTORENAMELENGTH, :MAXCHAR, :EMPTY_STRING, :ONE_EMPTY_STRING_ARRAY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @directory = Directory.getInstance()
        @stringUtil = StringUtil.getInstance()
        @abPathUtil = AbPathUtil.getInstance()
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
        @contextConfigurationInterface = nil
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
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @ONE_EMPTY_STRING_ARRAY = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
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
        @contextConfigurationInterface = ContextConfiguration.new()
    end
    

    def constructor1(request)
        initialize_fields
        self.getFormData(RequestParams.new(request).toHashMap())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("TWB- needs update for adding and updating context configuration - currently defaults to admin context config", self, "StoreFront")
        end
        self.setContextConfigurationInterface(ContextConfigurationInterfaceFactory.getInstance().getInstance("Admin"))
    end
    

    def constructor1(hashMap)
        initialize_fields
        self.getFormData(hashMap)
        domDocumentString = hashMap.get(StoreFrontData.getInstance().CONFIGURATION)
        if domDocumentString == nil
            document = DomDocumentHelper.create(domDocumentString)
            self.setContextConfigurationInterface(ContextConfigurationInterfaceFactory.getInstance().getInstance(document))
        end
    end
    

    def isColumn(columnName)
        if (columnName <=> StoreFrontData.getInstance().NAME) == 0 || (columnName <=> UserData::MAINEMAIL) == 0
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def createPath(key, hashMap)
        return AbPath.new(self.create(@EMPTY_STRING, key, hashMap), StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def createPath(append, key, hashMap)
        return AbPath.new(self.create(append, key, hashMap), StringUtil.getInstance().EMPTY_STRING)
    end
    

    def get(key, hashMap)
        return self.create(@EMPTY_STRING, key, hashMap)
    end
    

    def create(append, key, hashMap)
        path = hashMap.get(key)
        if StringValidationUtil.getInstance().isEmpty(path)
            return @EMPTY_STRING
        else
            if self.isColumn(path)
                return (hashMap.get(path)).to_s + append
            else
                return path
            end
        end
    end
    

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
        @staticPath = self.createPath(" Products" + (AbPathData.getInstance().SEPARATOR).to_s, storeFrontData.STATICPATH, storeHashMap)
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
        @timeCreated = storeHashMap.get(EntryData.getInstance().TIMECREATED)
        @lastModified = storeHashMap.get(EntryData.getInstance().LASTMODIFIED)
    end
    

    def isNameValid()
        if !StringValidationUtil.getInstance().isValidRequired(@name, @MINSTORENAMELENGTH, @MAXCHAR)
            return false
        else
            isEscapedCharactersContained = false
            storeNameEscaped = StringEscapeUtils.escapeHtml3(@name)
            if (@name <=> storeNameEscaped) != 0
                isEscapedCharactersContained = true
            end
            stringValidationUtil = StringValidationUtil.getInstance()
            isSpacesContained = false
            if stringValidationUtil.containsSpaces(@name)
                isSpacesContained = true
            end
            if isSpacesContained || isEscapedCharactersContained
                hashMap = SpecialCharacterUtil.getHashMap()
                hashMap.put([CommonSeps.getInstance().SPACE], @ONE_EMPTY_STRING_ARRAY)
                @name = Replace.new(hashMap).all(@name)
            end
        end
        return true
    end
    

    def isValid()
        valid = true
        valid = self.isNameValid()
        stringValidationUtil = StringValidationUtil.getInstance()
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
    

    def nameValidationInfo()
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@name, @MINCHAR, @MAXCHAR)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Name is invalid. Must be < ")
            stringBuffer.appendint(@MAXCHAR)
            stringBuffer.append(" and > 0 characters.<br>")
            return stringBuffer.to_s
        end
        return @EMPTY_STRING
    end
    

    def validationInfo()
        begin
            stringValidationUtil = StringValidationUtil.getInstance()
            stringBuffer = StringMaker.new()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def getTestHtmlPath()
        return org.allbinary.globals.URLGLOBALS.getTestHtmlPath() + self.getCurrentHostNamePath()
    end
    

    def getCurrentHostName()
        location = @EMPTY_STRING
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHostName()
        else
            location = self.getHostName()
        end
        return location
    end
    

    def getCurrentHostNamePath()
        location = @EMPTY_STRING
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHostNamePath()
        else
            location = self.getHostNamePath()
        end
        return location
    end
    

    def getCurrentHomeHostName()
        location = @EMPTY_STRING
        if org.allbinary.globals.URLGLOBALS.isTestingMode()
            location = self.getTestHomeHostName()
        else
            location = self.getHomeHostName()
        end
        return location
    end
    

    def getCurrentHomeHostNamePath()
        location = @EMPTY_STRING
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
    

    def getBasketName()
        return @basketName
    end
    

    def getHomeHostName()
        return @homeHostName
    end
    

    def getHomeHostNamePath()
        return @homeHostNamePath.to_s
    end
    

    def getHostName()
        return @hostName
    end
    

    def getHostNamePath()
        return @hostNamePath.to_s
    end
    

    def getTestHomeHostName()
        return @testHomeHostName
    end
    

    def getTestHomeHostNamePath()
        return @testHomeHostNamePath.to_s
    end
    

    def getTestHostName()
        return @testHostName
    end
    

    def getTestHostNamePath()
        return @testHostNamePath.to_s
    end
    

    def getStaticPath()
        return @staticPath.to_s
    end
    

    def getCategoryPath()
        return @categoryPath.to_s
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
        return @ftpPath.to_s
    end
    

    def getTestFtpPath()
        return @testFtpPath.to_s
    end
    

    def getTimeCreated()
        return @timeCreated
    end
    

    def getLastModified()
        return @lastModified
    end
    

    def setName(value)
        @name = value
    end
    

    def setBasketName(value)
        @basketName = value
    end
    

    def setHomeHostName(value)
        @homeHostName = value
    end
    

    # throws Exception
    def setHomeHostNamePath(value)
        @homeHostNamePath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def setHostName(value)
        @hostName = value
    end
    

    # throws Exception
    def setHostNamePath(value)
        @hostNamePath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def setTestHomeHostName(value)
        @testHomeHostName = value
    end
    

    # throws Exception
    def setTestHomeHostNamePath(value)
        @testHomeHostNamePath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def setTestHostName(value)
        @testHostName = value
    end
    

    # throws Exception
    def setTestHostNamePath(value)
        @testHostNamePath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def setImagePath(value)
        @imagePath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def setStaticPath(value)
        @staticPath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def setCategoryPath(value)
        @categoryPath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def setSubStores(value)
        @subStores = value
    end
    

    def setTagLocation(value)
        @tagLocation = value
    end
    

    def setPackageLocation(value)
        @packageLocation = value
    end
    

    def setInventoryControl(value)
        @inventoryControl = value
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getPackageLocation(value)
        @packageLocation = value
    end
    

    def setFtp(value)
        @ftp = value
    end
    

    def setFtpUserName(value)
        @ftpUserName = value
    end
    

    def setFtpPassword(value)
        @ftpPassword = value
    end
    

    def setTestFtp(value)
        @testFtp = value
    end
    

    def setTestFtpUserName(value)
        @testFtpUserName = value
    end
    

    def setTestFtpPassword(value)
        @testFtpPassword = value
    end
    

    def setTimeCreated(value)
        @timeCreated = value
    end
    

    def setLastModified(value)
        @lastModified = value
    end
    

    # throws Exception
    def setFtpPath(value)
        @ftpPath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def setTestFtpPath(value)
        @testFtpPath = AbPath.new(value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def createDirectories()
        storeAbPath = AbPath.new(URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), StringUtil.getInstance().EMPTY_STRING)
        if !@directory.create(storeAbPath)
            return false
        end
        if !@directory.create(AbPath.new(storeAbPath + self.getCategoryPath(), StringUtil.getInstance().EMPTY_STRING))
            return false
        end
        if !@directory.create(AbPath.new(storeAbPath + self.getStaticPath(), StringUtil.getInstance().EMPTY_STRING))
            return false
        end
        return true
    end
    

    # throws Exception
    def install(current, total)
        begin
            if !self.createDirectories()
                raise StandardError.new("Unable to create store directories")
            end
            stringBuffer = StringMaker.new()
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(URLGLOBALS.getMainPath())
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            viewPath = stringBuffer.to_s
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH)
            fromDirectoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append("special")
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            fromSpecialDirectoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(viewPath)
            stringBuffer.append(self.getName())
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            toDirectoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
            if current == 0
                if !@directory.create(toDirectoryAbPath)
                    raise StandardError.new("Unable to create store view directory: " + toDirectoryAbPath.to_s)
                end
            end
            viewTotal = (total * 85) / 100
            installTotal = (total * 93) / 100
            if current < viewTotal
                file = AbFile.createAbFileFromAbPath(fromSpecialDirectoryAbPath)
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "install()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def installViews(fromDirectoryAbPath, toDirectoryAbPath, current, total)
        FileUtil.getInstance().copyDirectoryPortion(fromDirectoryAbPath, toDirectoryAbPath, true, false, current, total)
    end
    

    # throws Exception
    def installResources(fromDirectoryAbPath, current, total)
        stringBuffer = StringMaker.new()
        stringBuffer.append(fromDirectoryAbPath.to_s)
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("Resources")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        installCategoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(self.getCurrentHomeHostNamePath())
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(self.getCategoryPath())
        categoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        FileUtil.getInstance().copyDirectoryPortion(installCategoryAbPath, categoryAbPath, true, false, current, total)
    end
    

    # throws Exception
    def installMedia(fromDirectoryAbPath, current, total)
        stringBuffer = StringMaker.new()
        stringBuffer.append(fromDirectoryAbPath.to_s)
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().TEMPLATEPATH)
        stringBuffer.append("images")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        viewStoreImagesDirectoryAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        storeAbPath = AbPath.new(URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), StringUtil.getInstance().EMPTY_STRING)
        FileUtil.getInstance().copyDirectoryPortion(viewStoreImagesDirectoryAbPath, storeAbPath, true, false, current, total)
    end
    

    # throws Exception
    def toVector()
        dataVector = BasicArrayListD.new()
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
        contextConfigurationDomDocumentMapping = ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
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
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        dataVector.add(time)
        dataVector.add(time)
        return dataVector
    end
    

    # throws Exception
    def toHashMap()
        storeFrontData = StoreFrontData.getInstance()
        dataHashMap = StdUtil.getInstance().createHashMap()
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
        contextConfigurationDomDocumentMapping = ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
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
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        dataHashMap.put(EntryData.getInstance().LASTMODIFIED, time)
        return dataHashMap
    end
    

    def getKey()
        return self.getName()
    end
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    

    def setContextConfigurationInterface(contextConfigurationInterface)
        @contextConfigurationInterface = contextConfigurationInterface
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/configuration/ContextConfiguration"
require "org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping"
require "org/allbinary/business/context/configuration/ContextConfigurationInterface"
require "org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/AbPathUtil"
require "org/allbinary/logic/string/SpecialCharacterUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/apache/commons/lang3/StringEscapeUtils"
require "org/w3c/dom/Document"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"

class StoreFront
    RESOURCES = " Resources" + (AbPathData.getInstance().SEPARATOR).to_s
end

