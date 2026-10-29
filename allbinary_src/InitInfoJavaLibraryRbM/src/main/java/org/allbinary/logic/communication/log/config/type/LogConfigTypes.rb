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
# package org.allbinary.logic.communication.log.config.type

require "java/lang/Object"

class LogConfigTypes
    

    def self.static_init
        LogConfigTypes.init()
    end
    

    def initialize()
    end
    

    def self.init()
        java_monitor.synchronize do
        begin
            PreLogUtil.put("Initialize LogconfigTypes", "LogConfigTypes", "init()")
            LogConfigTypeFactory.getInstance()
            loggingInitInfo = LoggingInitInfo.new()
            logConfigTypeVector = loggingInitInfo.getTypeList()
            PreLogUtil.put("Number Of Log Configs: " + (loggingInitInfo.getNumberOfLogConfigs()).to_s, "LogConfigTypes", "init()")
            PreLogUtil.put("Number Of Log Config Type Names: " + (logConfigTypeVector.size()).to_s, "LogConfigTypes", "init()")
            LogConfigTypes::LOGGING.addAllList(logConfigTypeVector)
            LogConfigTypes::LOGGING.add(LogConfigTypeFactory.getInstance().NETBEANS_MODULE)
        rescue StandardError => e
            PreLogUtil.putSE("Unable to initialize LogConfigTypes", "LogConfigTypes", "init()", e)
        end
        end
    end
    

    # throws Exception
    def self.getInstance(node)
        nameValueNode = DomSearchHelper.getNode(LogConfigTypeData.getInstance().NAME, node.getChildNodes())
        name = DomNodeHelper.getTextNodeValue(nameValueNode)
        descriptionValueNode = DomSearchHelper.getNodeNoThrow(LogConfigTypeData.getInstance().DESCRIPTION, node.getChildNodes())
        if descriptionValueNode != nil
            description = DomNodeHelper.getTextNodeValue(descriptionValueNode)
        end
        availableLogConfigTypes = LogConfigType.availableLogConfigTypes
        size = availableLogConfigTypes.size()
        logConfigType = nil
        (0...size).each do |index|
            logConfigType = availableLogConfigTypes.get(index)
            if logConfigType.getName().compareTo(name) == 0
                return logConfigType
            end
        end
        raise StandardError.new("No Such LogConfigType: " + name)
    end
end

require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/LoggingInitInfo"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/log/config/type/LogConfigType"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeData"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"

class LogConfigTypes
    JSP_ERROR_NO_FUNCTION = "in JSP Not In Function"
    LOGGING = BasicArrayListD.new()
end

LogConfigTypes.static_init

