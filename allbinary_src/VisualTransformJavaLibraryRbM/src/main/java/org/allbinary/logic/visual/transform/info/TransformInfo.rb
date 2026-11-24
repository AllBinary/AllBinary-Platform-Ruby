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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfo
    include TransformInfoInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :isChild, :name, :storeName, :objectFileName, :anyType, :objectConfigFileName, :objectConfigInterface, :template, :templateFileName, :dataFileName, :data

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @isChild = false
        @name = nil unless instance_variable_defined?(:@name)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @objectFileName = nil unless instance_variable_defined?(:@objectFileName)
        @anyType = nil unless instance_variable_defined?(:@anyType)
        @objectConfigFileName = nil unless instance_variable_defined?(:@objectConfigFileName)
        @objectConfigInterface = nil unless instance_variable_defined?(:@objectConfigInterface)
        @template = nil unless instance_variable_defined?(:@template)
        @templateFileName = nil unless instance_variable_defined?(:@templateFileName)
        @dataFileName = nil unless instance_variable_defined?(:@dataFileName)
        @data = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_info_TransformInfo_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_info_TransformInfo_1(*args)
        when 5 then jnew_org_allbinary_logic_visual_transform_info_TransformInfo_5(*args)
        else raise ArgumentError, "No constructor of TransformInfo takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfo_0()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfo
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfo_1(name)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfo
        self.setName(name)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfo_5(name, objectFileName, objectConfigFileName, templateFileName, dataFileName)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfo
        self.setName(name)
        self.setObjectFile(objectFileName)
        self.setObjectConfigFile(objectConfigFileName)
        self.setTemplateFile(templateFileName)
        self.setDataFile(dataFileName)
    end
    

    # throws Exception
    def override(hashMap)
        transformInfoData = TransformInfoData.getInstance()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        aName = hashMap.get(transformInfoData.NAME)
        if !stringValidationUtil.isEmpty(aName)
            @name = aName
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("TransformInfo properties overridden for: ")
            stringBuffer.append(self.getName())
            stringBuffer.append("\n properties: ")
            stringBuffer.append(hashMap.to_s)
            @logUtil.putF(stringBuffer.to_s, self, "override(HashMap hashMap)")
        end
        aStoreName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        if !stringValidationUtil.isEmpty(aStoreName)
            @storeName = aStoreName
        end
        aObjectFileName = hashMap.get(transformInfoData.OBJECTFILENAME)
        if !stringValidationUtil.isEmpty(aObjectFileName)
            @objectFileName = aObjectFileName
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(@storeName)
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        fileAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        aObject = hashMap.get(transformInfoData.OBJECT)
        if !stringValidationUtil.isEmpty(aObject)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override view Object for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::ViewObject::TransformInfoObjectData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::ViewObject::TransformInfoObjectData.getInstance().ENCRYPTED_EXTENSION).get(::Org::Allbinary::Logic::Io::Path::AbPath.new(fileAbPath.to_s, aObject))
            if fileDataString != nil
                @anyType = fileDataString
            end
        end
        if !stringValidationUtil.isEmpty(hashMap.get(transformInfoData.OBJECTCONFIG))
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override ObjectConfig for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            self.setObjectConfig(hashMap.get(transformInfoData.OBJECTCONFIG))
        end
        objectConfigFileName = hashMap.get(transformInfoData.OBJECTCONFIGFILENAME)
        if !stringValidationUtil.isEmpty(objectConfigFileName)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override ObjectConfig File for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            self.setObjectConfigFile(objectConfigFileName)
        end
        type = hashMap.get(::Org::Allbinary::Logic::Io::OutputTypeData.getInstance().NAME)
        if !stringValidationUtil.isEmpty(type)
            if self.getObjectConfigInterface() == nil
                self.setObjectConfigInterface(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfig.new(self))
            end
            self.getObjectConfigInterface().setOutputTypeName(type)
        end
        aTemplateFileName = hashMap.get(transformInfoData.TEMPLATEFILENAME)
        if !stringValidationUtil.isEmpty(aTemplateFileName)
            @templateFileName = aTemplateFileName
        end
        aTemplate = hashMap.get(transformInfoData.TEMPLATE)
        if !stringValidationUtil.isEmpty(aTemplate)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override Template for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).get(::Org::Allbinary::Logic::Io::Path::AbPath.new(fileAbPath.to_s, aTemplate))
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TransformInfo override Data for: " + self.getName(), self, "override(HashMap hashMap)")
            end
            fileDataString = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::DataPackage::TransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::DataPackage::TransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(::Org::Allbinary::Logic::Io::Path::AbPath.new(fileAbPath.to_s, aData))
            if !stringValidationUtil.isEmpty(fileDataString)
                @data = fileDataString
            end
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
            @logUtil.putF(self.log(), self, "override")
        end
    end
    java_overload :override, 1
    

    def log()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(self.getObjectFile())
        stringBuffer.append("->TransformInfo")
        stringBuffer.append("TransformInfoInterface(HashMap)")
        return stringBuffer.to_s
    end
    java_overload :log, 0
    

    def setName(value)
        @name = value
    end
    java_overload :setName, 1
    

    def setStoreName(value)
        @storeName = value
    end
    java_overload :setStoreName, 1
    

    def getStoreName()
        return @storeName
    end
    java_overload :getStoreName, 0
    

    def setObject(anyType)
        @anyType = anyType
    end
    java_overload :setObject, 1
    

    def setObjectFile(value)
        @objectFileName = value
    end
    java_overload :setObjectFile, 1
    

    def setTemplate(value)
        @template = value
    end
    java_overload :setTemplate, 1
    

    def setTemplateFile(value)
        @templateFileName = value
    end
    java_overload :setTemplateFile, 1
    

    # throws Exception
    def setObjectConfigFileName(value)
        @objectConfigFileName = value
    end
    java_overload :setObjectConfigFileName, 1
    

    # throws Exception
    def setObjectConfigFile(value)
        @objectConfigFileName = value
        self.setObjectConfigInterface(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, self, self.getObjectConfigFilePath()))
    end
    java_overload :setObjectConfigFile, 1
    

    # throws Exception
    def setObjectConfig(value)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(value)
        self.setObjectConfigInterface(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, self, document))
    end
    java_overload :setObjectConfig, 1
    

    def setDataFile(value)
        @dataFileName = value
    end
    java_overload :setDataFile, 1
    

    def setData(value)
        @data = value
    end
    java_overload :setData, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getObject()
        return @anyType
    end
    java_overload :getObject, 0
    

    def getObjectFile()
        return @objectFileName
    end
    java_overload :getObjectFile, 0
    

    def getTemplate()
        return @template
    end
    java_overload :getTemplate, 0
    

    def getTemplateFile()
        return @templateFileName
    end
    java_overload :getTemplateFile, 0
    

    # throws Exception
    def getTemplateFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbFilePath.new(self.getTemplateFile())
    end
    java_overload :getTemplateFilePath, 0
    

    # throws Exception
    def getObjectConfigFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbFilePath.new(self.getObjectConfigFile())
    end
    java_overload :getObjectConfigFilePath, 0
    

    # throws Exception
    def getDataFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbFilePath.new(self.getDataFile())
    end
    java_overload :getDataFilePath, 0
    

    def getObjectConfigFile()
        return @objectConfigFileName
    end
    java_overload :getObjectConfigFile, 0
    

    def getData()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        dataFileString = self.getDataFile()
        if !stringValidationUtil.isEmpty(dataFileString)
            begin
                fileData = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::DataPackage::TransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::DataPackage::TransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(self.getDataFilePath())
                if !stringValidationUtil.isEmpty(@data)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Data File overriding existing data: " + (self.getDataFilePath()).to_s, self, "getData()")
                    end
                end
                @data = fileData
            rescue StandardError => e
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                    @logUtil.put("Could Not Load Data from: " + (self.getDataFile()).to_s, self, "getData()", e)
                end
            end
        end
        begin
            if !stringValidationUtil.isEmpty(@data)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                    @logUtil.putF("Data: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(@data)), self, "getData()")
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Name: ")
                    stringBuffer.append(@name)
                    stringBuffer.append("\nEmpty Data For: ")
                    stringBuffer.append(dataFileString)
                    stringBuffer.append("\nPath: ")
                    stringBuffer.append(self.getDataFilePath().toFileSystemString())
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                        @logUtil.putF(stringBuffer.to_s, self, "getData()")
                    end
                end
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Could Not Preview Data: " + @data, self, "getData()", e)
            end
        end
        return @data
    end
    java_overload :getData, 0
    

    # throws Exception
    def getDataDocument()
        localData = self.getData()
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(localData)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("No Data So Creating New Document", self, "getDataDocument()")
            end
            return ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        else
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(localData)
            return document
        end
    end
    java_overload :getDataDocument, 0
    

    def getDataFile()
        return @dataFileName
    end
    java_overload :getDataFile, 0
    

    def toHashMap()
        transformInfoData = TransformInfoData.getInstance()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(transformInfoData.NAME, @name)
        hashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(transformInfoData.OBJECTFILENAME, @objectFileName)
        hashMap.put(transformInfoData.OBJECT, @anyType)
        hashMap.put(transformInfoData.OBJECTCONFIGFILENAME, self.getObjectConfigFile())
        hashMap.put(transformInfoData.OBJECTCONFIG, ::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.encode(self.getObjectConfigInterface().to_s.bytes))
        hashMap.put(transformInfoData.TEMPLATEFILENAME, @templateFileName)
        hashMap.put(transformInfoData.TEMPLATE, @template)
        hashMap.put(transformInfoData.DATAFILENAME, @dataFileName)
        hashMap.put(transformInfoData.DATA, ::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.encode(@data.bytes))
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(@name)
        vector.add(@storeName)
        vector.add(@objectFileName)
        vector.add(@anyType)
        vector.add(self.getObjectConfigFile())
        vector.add(::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.encode(self.getObjectConfigInterface().to_s.bytes))
        vector.add(@templateFileName)
        vector.add(@template)
        vector.add(@dataFileName)
        vector.add(::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.encode(@data.bytes))
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        vector.add(time)
        vector.add(time)
        return vector
    end
    java_overload :toVector, 0
    

    def getKey()
        return self.getName()
    end
    java_overload :getKey, 0
    

    def setChild()
        @isChild = true
    end
    java_overload :setChild, 0
    

    def isChild()
        return @isChild
    end
    java_overload :isChild, 0
    

    def getObjectConfigInterface()
        return @objectConfigInterface
    end
    java_overload :getObjectConfigInterface, 0
    

    def setObjectConfigInterface(objectConfigInterface)
        @objectConfigInterface = objectConfigInterface
    end
    java_overload :setObjectConfigInterface, 1
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :Encoder, "org/allbinary/logic/control/crypt/Encoder" unless const_defined?(:Encoder, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :OutputTypeData, "org/allbinary/logic/io/OutputTypeData" unless const_defined?(:OutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbFilePath, "org/allbinary/logic/io/path/AbFilePath" unless const_defined?(:AbFilePath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module DataPackage; autoload :TransformInfoDataData, "org/allbinary/logic/visual/transform/info/data/TransformInfoDataData" unless const_defined?(:TransformInfoDataData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig" unless const_defined?(:TransformInfoObjectConfig, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigAndManipulatorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory" unless const_defined?(:TransformInfoObjectConfigAndManipulatorFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module Template; autoload :TransformInfoTemplateData, "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData" unless const_defined?(:TransformInfoTemplateData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ViewObject; autoload :TransformInfoObjectData, "org/allbinary/logic/visual/transform/info/viewObject/TransformInfoObjectData" unless const_defined?(:TransformInfoObjectData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)

end; end; end; end; end; end

