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


class LogConfig
    attr_accessor :isEnabled, :name, :description, :path, :fileName

    def initialize_fields
        @isEnabled = nil
        @name = nil
        @description = nil
        @path = nil
        @fileName = nil
    end

    def initialize(*args)
        case args.length
        when 4 then constructor4(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor4(aName, aDescription, aPath, aFileName)
        initialize_fields
        @isEnabled = false
        @name = aName
        @description = aDescription
        @path = aPath
        @fileName = aFileName
    end
    

    def constructor1(node)
        initialize_fields
        enabledValueNode = DomSearchHelper.getNode(EntryData.getInstance().ENABLE, node.getChildNodes())
        isEnabledString = DomNodeHelper.getTextNodeValue(enabledValueNode)
        @isEnabled = BooleanUtil.getInstance().getFromString(isEnabledString)
        logConfigData = LogConfigData.getInstance()
        nameValueNode = DomSearchHelper.getNode(logConfigData.NAME, node.getChildNodes())
        @name = DomNodeHelper.getTextNodeValue(nameValueNode)
        descriptionValueNode = DomSearchHelper.getNode(logConfigData.DESCRIPTION, node.getChildNodes())
        @description = DomNodeHelper.getTextNodeValue(descriptionValueNode)
        fileValueNode = DomSearchHelper.getNode(logConfigData.FILE, node.getChildNodes())
        @fileName = DomNodeHelper.getTextNodeValue(fileValueNode)
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
        logKeyVector = BasicArrayListD.new()
        return logKeyVector
    end
end

require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/java/bool/BooleanUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/log/config/LogConfigData"

