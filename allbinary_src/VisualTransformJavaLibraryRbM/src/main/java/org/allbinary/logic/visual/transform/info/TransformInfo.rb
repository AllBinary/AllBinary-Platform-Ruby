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
# package org.allbinary.logic.visual.transform.info

require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

class TransformInfo
    include TransformInfoInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :isChild, :name, :storeName, :objectFileName, :anyType, :objectConfigFileName, :objectConfigInterface, :template, :templateFileName, :dataFileName, :data

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @isChild = false
        @name = nil
        @storeName = nil
        @objectFileName = nil
        @anyType = nil
        @objectConfigFileName = nil
        @objectConfigInterface = nil
        @template = nil
        @templateFileName = nil
        @dataFileName = nil
        @data = StringUtil.getInstance().EMPTY_STRING
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 5 then constructor5(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(name)
        initialize_fields
        self.setName(name)
    end
    

    def constructor5(name, objectFileName, objectConfigFileName, templateFileName, dataFileName)
        initialize_fields
        self.setName(name)
        self.setObjectFile(objectFileName)
        self.setObjectConfigFile(objectConfigFileName)
        self.setTemplateFile(templateFileName)
        self.setDataFile(dataFileName)
    end
    

    # throws Exception
    def override(hashMap)
        transformInfoData = TransformInfoData.getInstance()
        stringValidationUtil = StringValidationUtil.getInstance()
        aName = hashMap.get(transformInfoData.NAME)
        if !stringValidationUtil.isEmpty(aName)
            @name = aName
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("TransformInfo properties overridden for: ")
            stringBuffer.append(self.getName())
            stringBuffer.append("\n properties: ")
            stringBuffer.append(hashMap.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "override(HashMap hashMap)")
        end
        aStoreName = hashMap.get(StoreFrontData.getInstance().NAME)
        if !stringValidationUtil.isEmpty(aStoreName)
            @storeName = aStoreName
        end
        aObjectFileName = hashMap.get(transformInfoData.OBJECTFILENAME)
        if !stringValidationUtil.isEmpty(aObjectFileName)
            @objectFileName = aObjectFileName
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(@storeName)
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        fileAbPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        aObject = hashMap.get(transformInfoData.OBJECT)
        if !stringValidationUtil.isEmpty(aObject)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override view Object for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = CryptFileReader.new(TransformInfoObjectData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectData.getInstance().ENCRYPTED_EXTENSION).get(AbPath.new(fileAbPath.to_s, aObject))
            if fileDataString != nil
                @anyType = fileDataString
            end
        end
        if !stringValidationUtil.isEmpty(hashMap.get(transformInfoData.OBJECTCONFIG))
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override ObjectConfig for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            self.setObjectConfig(hashMap.get(transformInfoData.OBJECTCONFIG))
        end
        objectConfigFileName = hashMap.get(transformInfoData.OBJECTCONFIGFILENAME)
        if !stringValidationUtil.isEmpty(objectConfigFileName)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override ObjectConfig File for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            self.setObjectConfigFile(objectConfigFileName)
        end
        type = hashMap.get(OutputTypeData.getInstance().NAME)
        if !stringValidationUtil.isEmpty(type)
            if self.getObjectConfigInterface() == nil
                self.setObjectConfigInterface(TransformInfoObjectConfig.new(self))
            end
            self.getObjectConfigInterface().setOutputTypeName(type)
        end
        aTemplateFileName = hashMap.get(transformInfoData.TEMPLATEFILENAME)
        if !stringValidationUtil.isEmpty(aTemplateFileName)
            @templateFileName = aTemplateFileName
        end
        aTemplate = hashMap.get(transformInfoData.TEMPLATE)
        if !stringValidationUtil.isEmpty(aTemplate)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override Template for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = CryptFileReader.new(TransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).get(AbPath.new(fileAbPath.to_s, aTemplate))
            if !stringValidationUtil.isEmpty(fileDataString)
                @template = fileDataString
            end
        end
        aDataFileName = hashMap.get(transformInfoData.DATAFILENAME)
        if !stringValidationUtil.isEmpty(aDataFileName)
            @dataFileName = aDataFileName
        end
        aData = hashMap.get(transformInfoData.DATA)
        if !stringValidationUtil.isEmpty(aData)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override Data for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = CryptFileReader.new(TransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(AbPath.new(fileAbPath.to_s, aData))
            if !stringValidationUtil.isEmpty(fileDataString)
                @data = fileDataString
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Name: ")
            stringBuffer.append(aName)
            stringBuffer.append("\nTemp Object File: ")
            stringBuffer.append(aObject)
            stringBuffer.append("\nTemp Object Config File: ")
            stringBuffer.append(self.getObjectConfigFilePath().to_s)
            stringBuffer.append("\nTemp Template File: ")
            stringBuffer.append(aTemplate)
            stringBuffer.append("\nTemp Data File: ")
            stringBuffer.append(aData)
            stringBuffer.append("\nStore Name: ")
            stringBuffer.append(aStoreName)
            stringBuffer.append("\nObjectFile: ")
            stringBuffer.append(self.getObjectFile())
            stringBuffer.append("->TransformInfo")
            @logUtil.putF(stringBuffer.to_s, self, "TransformInfoInterface(HashMap)")
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
            @logUtil.putF(self.log(), self, "override")
        end
    end
    

    def log()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(@name)
        stringBuffer.append("\nObject File: ")
        stringBuffer.append(@objectFileName)
        stringBuffer.append("\nObject Config File Path: ")
        stringBuffer.append(self.getObjectConfigFile())
        stringBuffer.append("\nTemplate File: ")
        stringBuffer.append(@templateFileName)
        stringBuffer.append("\nData File: ")
        stringBuffer.append(@dataFileName)
        stringBuffer.append("\nStore Name: ")
        stringBuffer.append(@storeName)
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(self.getObjectFile())
        stringBuffer.append("->TransformInfo")
        stringBuffer.append("TransformInfoInterface(HashMap)")
        return stringBuffer.to_s
    end
    

    def setName(value)
        @name = value
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    def getStoreName()
        return @storeName
    end
    

    def setObject(anyType)
        @anyType = anyType
    end
    

    def setObjectFile(value)
        @objectFileName = value
    end
    

    def setTemplate(value)
        @template = value
    end
    

    def setTemplateFile(value)
        @templateFileName = value
    end
    

    # throws Exception
    def setObjectConfigFileName(value)
        @objectConfigFileName = value
    end
    

    # throws Exception
    def setObjectConfigFile(value)
        @objectConfigFileName = value
        self.setObjectConfigInterface(TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, self, self.getObjectConfigFilePath()))
    end
    

    # throws Exception
    def setObjectConfig(value)
        document = DomDocumentHelper.create(value)
        self.setObjectConfigInterface(TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, self, document))
    end
    

    def setDataFile(value)
        @dataFileName = value
    end
    

    def setData(value)
        @data = value
    end
    

    def getName()
        return @name
    end
    

    def getObject()
        return @anyType
    end
    

    def getObjectFile()
        return @objectFileName
    end
    

    def getTemplate()
        return @template
    end
    

    def getTemplateFile()
        return @templateFileName
    end
    

    # throws Exception
    def getTemplateFilePath()
        return AbFilePath.new(self.getTemplateFile())
    end
    

    # throws Exception
    def getObjectConfigFilePath()
        return AbFilePath.new(self.getObjectConfigFile())
    end
    

    # throws Exception
    def getDataFilePath()
        return AbFilePath.new(self.getDataFile())
    end
    

    def getObjectConfigFile()
        return @objectConfigFileName
    end
    

    def getData()
        stringValidationUtil = StringValidationUtil.getInstance()
        dataFileString = self.getDataFile()
        if !stringValidationUtil.isEmpty(dataFileString)
            begin
                fileData = CryptFileReader.new(TransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(self.getDataFilePath())
                if !stringValidationUtil.isEmpty(@data)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Data File overriding existing data: " + (self.getDataFilePath()).to_s, self, "getData()")
                    end
                end
                @data = fileData
            rescue StandardError => e
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                    @logUtil.put("Could Not Load Data from: " + (self.getDataFile()).to_s, self, "getData()", e)
                end
            end
        end
        begin
            if !stringValidationUtil.isEmpty(@data)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                    @logUtil.putF("Data: " + XmlDocumentHelper.toString(DomDocumentHelper.create(@data)), self, "getData()")
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Name: ")
                    stringBuffer.append(@name)
                    stringBuffer.append("\nEmpty Data For: ")
                    stringBuffer.append(dataFileString)
                    stringBuffer.append("\nPath: ")
                    stringBuffer.append(self.getDataFilePath().toFileSystemString())
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                        @logUtil.putF(stringBuffer.to_s, self, "getData()")
                    end
                end
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Could Not Preview Data: " + @data, self, "getData()", e)
            end
        end
        return @data
    end
    

    # throws Exception
    def getDataDocument()
        localData = self.getData()
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(localData)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("No Data So Creating New Document", self, "getDataDocument()")
            end
            return DomDocumentHelper.create()
        else
            document = DomDocumentHelper.create(localData)
            return document
        end
    end
    

    def getDataFile()
        return @dataFileName
    end
    

    def toHashMap()
        transformInfoData = TransformInfoData.getInstance()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(transformInfoData.NAME, @name)
        hashMap.put(StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(transformInfoData.OBJECTFILENAME, @objectFileName)
        hashMap.put(transformInfoData.OBJECT, @anyType)
        hashMap.put(transformInfoData.OBJECTCONFIGFILENAME, self.getObjectConfigFile())
        hashMap.put(transformInfoData.OBJECTCONFIG, Encoder.encode(self.getObjectConfigInterface().to_s.bytes))
        hashMap.put(transformInfoData.TEMPLATEFILENAME, @templateFileName)
        hashMap.put(transformInfoData.TEMPLATE, @template)
        hashMap.put(transformInfoData.DATAFILENAME, @dataFileName)
        hashMap.put(transformInfoData.DATA, Encoder.encode(@data.bytes))
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        hashMap.put(EntryData.getInstance().LASTMODIFIED, time)
        return hashMap
    end
    

    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@name)
        vector.add(@storeName)
        vector.add(@objectFileName)
        vector.add(@anyType)
        vector.add(self.getObjectConfigFile())
        vector.add(Encoder.encode(self.getObjectConfigInterface().to_s.bytes))
        vector.add(@templateFileName)
        vector.add(@template)
        vector.add(@dataFileName)
        vector.add(Encoder.encode(@data.bytes))
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        vector.add(time)
        vector.add(time)
        return vector
    end
    

    def getKey()
        return self.getName()
    end
    

    def setChild()
        @isChild = true
    end
    

    def isChild()
        return @isChild
    end
    

    def getObjectConfigInterface()
        return @objectConfigInterface
    end
    

    def setObjectConfigInterface(objectConfigInterface)
        @objectConfigInterface = objectConfigInterface
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/Encoder"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/OutputTypeData"
require "org/allbinary/logic/io/path/AbFilePath"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/info/data/TransformInfoDataData"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData"
require "org/allbinary/logic/visual/transform/info/viewObject/TransformInfoObjectData"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"

