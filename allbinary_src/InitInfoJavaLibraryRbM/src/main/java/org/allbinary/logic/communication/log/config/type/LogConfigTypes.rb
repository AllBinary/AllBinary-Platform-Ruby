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
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type

class LogConfigTypes
    

    def self.static_init
        LogConfigTypes.init()
    end
    

    def initialize()
    end
    

    def self.init()
        java_monitor.synchronize do
        begin
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Initialize LogconfigTypes", "LogConfigTypes", "init()")
            LogConfigTypeFactory.getInstance()
            loggingInitInfo = ::Org::Allbinary::Logic::Communication::Log::Config::LoggingInitInfo.new()
            logConfigTypeVector = loggingInitInfo.getTypeList()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Number Of Log Configs: " + (loggingInitInfo.getNumberOfLogConfigs()).to_s, "LogConfigTypes", "init()")
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Number Of Log Config Type Names: " + (logConfigTypeVector.size()).to_s, "LogConfigTypes", "init()")
            LogConfigTypes::LOGGING.addAllList(logConfigTypeVector)
            LogConfigTypes::LOGGING.add(LogConfigTypeFactory.getInstance().NETBEANS_MODULE)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putSE("Unable to initialize LogConfigTypes", "LogConfigTypes", "init()", e)
        end
        end
    end
    

    # throws Exception
    def self.getInstance(node)
        nameValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(LogConfigTypeData.getInstance().NAME, node.getChildNodes())
        name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(nameValueNode)
        descriptionValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(LogConfigTypeData.getInstance().DESCRIPTION, node.getChildNodes())
        if descriptionValueNode != nil
            description = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(descriptionValueNode)
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:JSP_ERROR_NO_FUNCTION, "in JSP Not In Function")
        begin
            const_set(:LOGGING, ::Org::Allbinary::Util::BasicArrayListD.new())
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogConfigTypes"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:JSP_ERROR_NO_FUNCTION, :LOGGING].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; autoload :LoggingInitInfo, "org/allbinary/logic/communication/log/config/LoggingInitInfo" unless const_defined?(:LoggingInitInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :LogConfigType, "org/allbinary/logic/communication/log/config/type/LogConfigType" unless const_defined?(:LogConfigType, false)
autoload :LogConfigTypeData, "org/allbinary/logic/communication/log/config/type/LogConfigTypeData" unless const_defined?(:LogConfigTypeData, false)
autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false)

begin
    LogConfigTypes.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

