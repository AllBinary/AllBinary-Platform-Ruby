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
# package org.allbinary.logic.communication.log.config


module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config

class LogConfig
    attr_accessor :isEnabled, :name, :description, :path, :fileName

    def jfields_org_allbinary_logic_communication_log_config_LogConfig
        @isEnabled = nil unless instance_variable_defined?(:@isEnabled)
        @name = nil unless instance_variable_defined?(:@name)
        @description = nil unless instance_variable_defined?(:@description)
        @path = nil unless instance_variable_defined?(:@path)
        @fileName = nil unless instance_variable_defined?(:@fileName)
    end

    def initialize(*args)
        case args.length
        when 4 then jnew_org_allbinary_logic_communication_log_config_LogConfig_4(*args)
        when 1 then jnew_org_allbinary_logic_communication_log_config_LogConfig_1(*args)
        else raise ArgumentError, "No constructor of LogConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_log_config_LogConfig_4(aName, aDescription, aPath, aFileName)
        jfields_org_allbinary_logic_communication_log_config_LogConfig
        @isEnabled = false
        @name = aName
        @description = aDescription
        @path = aPath
        @fileName = aFileName
    end
    

    def jnew_org_allbinary_logic_communication_log_config_LogConfig_1(node)
        jfields_org_allbinary_logic_communication_log_config_LogConfig
        enabledValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, node.getChildNodes())
        isEnabledString = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(enabledValueNode)
        @isEnabled = ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(isEnabledString)
        logConfigData = LogConfigData.getInstance()
        nameValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(logConfigData.NAME, node.getChildNodes())
        @name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(nameValueNode)
        descriptionValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(logConfigData.DESCRIPTION, node.getChildNodes())
        @description = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(descriptionValueNode)
        fileValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(logConfigData.FILE, node.getChildNodes())
        @fileName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(fileValueNode)
    end
    

    def getName()
        return @name
    end
    

    def isEnabled()
        return @isEnabled
    end
    

    def enable()
        @isEnabled = true
    end
    

    def disable()
        @isEnabled = false
    end
    

    def getDescription()
        return @description
    end
    

    def getFileName()
        return @fileName
    end
    

    def setName(value)
        @name = value
    end
    

    def setDescription(value)
        @description = value
    end
    

    def setPath(value)
        @path = value
    end
    

    def setFileName(value)
        @fileName = value
    end
    

    # throws Exception
    def getDoc()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
        stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
        stringBuffer.append(self.getFileName())
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(file))
        return document
    end
    

    # throws Exception
    def getTypeVector()
        logKeyVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        document = self.getDoc()
        logConfigTypesNodeList = document.getElementsByTagName(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypesData.getInstance().NAME)
        logConfigTypesNode = logConfigTypesNodeList.item(0)
        logConfigTypeNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeData.getInstance().NAME, logConfigTypesNode.getChildNodes())
        size = logConfigTypeNodeVector.size()
        (0...size).each do |i|
            node = logConfigTypeNodeVector.get(i)
            logType = ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes.getInstance(node)
            logKeyVector.add(logType)
        end
        return logKeyVector
    end
end

module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigType, "org/allbinary/logic/communication/log/config/type/LogConfigType" unless const_defined?(:LogConfigType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeData, "org/allbinary/logic/communication/log/config/type/LogConfigTypeData" unless const_defined?(:LogConfigTypeData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypesData, "org/allbinary/logic/communication/log/config/type/LogConfigTypesData" unless const_defined?(:LogConfigTypesData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileLocalInputStream, "org/allbinary/logic/io/AbFileLocalInputStream" unless const_defined?(:AbFileLocalInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :LogConfigData, "org/allbinary/logic/communication/log/config/LogConfigData" unless const_defined?(:LogConfigData, false)

end; end; end; end; end; end

