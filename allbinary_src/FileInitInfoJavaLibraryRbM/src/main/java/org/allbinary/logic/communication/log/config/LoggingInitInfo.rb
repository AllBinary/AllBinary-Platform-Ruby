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

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config

class LoggingInitInfo
    

    def initialize()
    end
    

    # throws Exception
    def self.getDoc()
        java_monitor.synchronize do
        path = ::Org::Allbinary::Globals::URLGLOBALS.getWebappPath() + LoggingInitInfo::PACKAGE
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(path, INITFILENAME)
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(file))
        return document
        end
    end
    

    # throws Exception
    def self.write()
        java_monitor.synchronize do
        begin
            LoggingInitInfo.hasRead = false
        rescue StandardError => e
            raise e
        end
        end
    end
    

    # throws Exception
    def self.read()
        java_monitor.synchronize do
        begin
            document = LoggingInitInfo.getDoc()
            logConfigsNodeList = document.getElementsByTagName(LogConfigsData.getInstance().NAME)
            logConfigsNode = logConfigsNodeList.item(0)
            logConfigNodeVector = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getAllNodes(LogConfigData.getInstance().NAME, logConfigsNode.getChildNodes())
            LoggingInitInfo.logConfigInfoList = ::Org::Allbinary::Util::BasicArrayListD.new()
            size = logConfigNodeVector.size()
            (0...size).each do |i|
                node = logConfigNodeVector.get(i)
                logConfigInfo = LogConfig.new(node)
                LoggingInitInfo.logConfigInfoList.add(logConfigInfo)
            end
        rescue StandardError => e
            raise e
        end
        end
    end
    

    def self.setHasRead(value)
        java_monitor.synchronize do
        LoggingInitInfo.hasRead = value
        end
    end
    

    # throws Exception
    def self.updateIfNeeded()
        java_monitor.synchronize do
        if !LoggingInitInfo.hasRead
            LoggingInitInfo.read()
            LoggingInitInfo.hasRead = true
            if LoggingInitInfo.logConfigInfoList == nil
                raise StandardError.new("Read Failed")
            end
        end
        end
    end
    

    def isValid()
        begin
            return true
        rescue StandardError => e
            return false
        end
    end
    

    def self.set(logConfigInfoVector)
        java_monitor.synchronize do
        LoggingInitInfo.logConfigInfoList = logConfigInfoVector
        end
    end
    

    # throws Exception
    def self.get()
        LoggingInitInfo.updateIfNeeded()
        return LoggingInitInfo.logConfigInfoList
    end
    

    # throws Exception
    def self.getTypeNameList()
        LoggingInitInfo.updateIfNeeded()
        allLogTypeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = LoggingInitInfo.logConfigInfoList.size()
        (0...size).each do |index|
            logConfigInfo = LoggingInitInfo.logConfigInfoList.objectArray[index]
            logTypeVector = logConfigInfo.getTypeVector()
            if logConfigInfo.isEnabled()
                allLogTypeVector.addAllList(logTypeVector)
            end
        end
        return allLogTypeVector
    end
    

    # throws Exception
    def self.getTypeList()
        LoggingInitInfo.updateIfNeeded()
        allLogTypeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = LoggingInitInfo.logConfigInfoList.size()
        (0...size).each do |index|
            logConfigInfo = LoggingInitInfo.logConfigInfoList.objectArray[index]
            logTypeVector = logConfigInfo.getTypeVector()
            if logConfigInfo.isEnabled()
                allLogTypeVector.addAllList(logTypeVector)
            end
        end
        return allLogTypeVector
    end
    

    # throws Exception
    def getNumberOfLogConfigs()
        return LoggingInitInfo.logConfigInfoList.size()
    end
    

    def toString()
        begin
            document = LoggingInitInfo.getDoc()
            return ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document)
        rescue StandardError => e
            return "Error"
        end
    end
    alias_method :to_s, :toString

    def self.logConfigInfoList()
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@logConfigInfoList) ? @@logConfigInfoList : nil
    end

    def self.logConfigInfoList=(value)
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        @@logConfigInfoList = value
    end

    def self.hasRead()
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@hasRead) ? @@hasRead : nil
    end

    def self.hasRead=(value)
        LoggingInitInfo.java_static_fields unless @java_static_fields_started
        @@hasRead = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INITFILENAME, "logConfig.xml")
        @@logConfigInfoList = nil
        @@hasRead = false
        begin
            const_set(:PACKAGE, ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LoggingInitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INITFILENAME, :PACKAGE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileLocalInputStream, "org/allbinary/logic/io/AbFileLocalInputStream" unless const_defined?(:AbFileLocalInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :LogConfig, "org/allbinary/logic/communication/log/config/LogConfig" unless const_defined?(:LogConfig, false)
autoload :LogConfigData, "org/allbinary/logic/communication/log/config/LogConfigData" unless const_defined?(:LogConfigData, false)
autoload :LogConfigsData, "org/allbinary/logic/communication/log/config/LogConfigsData" unless const_defined?(:LogConfigsData, false)

begin
    LoggingInitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

