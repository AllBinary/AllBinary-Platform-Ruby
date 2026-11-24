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
    def getTypeVector()
        logKeyVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        return logKeyVector
    end
end

module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :LogConfigData, "org/allbinary/logic/communication/log/config/LogConfigData" unless const_defined?(:LogConfigData, false)

end; end; end; end; end; end

