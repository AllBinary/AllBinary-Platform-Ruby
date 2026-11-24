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
# package org.allbinary.input.automation.module.osgi

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "java/io/File"
# require "java/io/FileFilter"
# require "java/net/URL"
# require "java/util/Set"
# require "java/util/jar/JarInputStream"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Osgi

class InputAutomationNewBundleRunnable
    include ::Org::Allbinary::ThreadPackage::RunnableInterface
    attr_accessor :logUtil, :commonStrings, :inputAutomationBundleActivator, :running, :fileBasicArrayList

    def jfields_org_allbinary_input_automation_module_osgi_InputAutomationNewBundleRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @inputAutomationBundleActivator = nil unless instance_variable_defined?(:@inputAutomationBundleActivator)
        @running = false unless instance_variable_defined?(:@running)
        @fileBasicArrayList = nil unless instance_variable_defined?(:@fileBasicArrayList)
    end
    

    def initialize(inputAutomationBundleActivator)
        jfields_org_allbinary_input_automation_module_osgi_InputAutomationNewBundleRunnable
        @inputAutomationBundleActivator = inputAutomationBundleActivator
        @fileBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    # throws Exception
    def setThread(thread)
    end
    java_overload :setThread, 1
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    java_overload :isRunning, 0
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def updateModules()
        @logUtil.putF(@commonStrings.START, self, "updateModules")
        list = self.findNewModules()
        size = list.size()
        bundle = nil
        (0...size).each do |index|
            bundle = self.install(list.get(index))
            if bundle != nil
                bundle.start(InputAutomationNewBundleRunnable::MODULES_START_LEVEL)
            end
        end
    end
    java_overload :updateModules, 0
    

    # throws Exception
    def getAllJarSymbolicNameHashMap()
        @logUtil.putF(@commonStrings.START, self, "getAllJarSymbolicNameHashMap")
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        jarFileBasicArrayList = self.getJarModuleFileBasicArrayList()
        @logUtil.putF("Jar Module Files: " + (jarFileBasicArrayList).to_s, self, "getAllJarSymbolicNameHashMap")
        size = jarFileBasicArrayList.size()
        file = nil
        (0...size).each do |index|
            file = jarFileBasicArrayList.get(index)
            if !file.isDirectory()
                fileInputStream = ::Java::Io::FileInputStream.new(file)
                jarInputStream = JarInputStream.new(fileInputStream)
                manifest = jarInputStream.getManifest()
                if manifest == nil
                else
                    symbolicName = manifest.getMainAttributes().getValue(::Org::Osgi::Framework::Constants::BUNDLE_SYMBOLICNAME)
                    if symbolicName != nil
                        hashMap.put(symbolicName, URL.new(InputAutomationNewBundleRunnable::FILE + file.getAbsolutePath()))
                    end
                end
            end
        end
        return hashMap
    end
    java_overload :getAllJarSymbolicNameHashMap, 0
    

    def getJarModuleFileBasicArrayList()
        @logUtil.putF(@commonStrings.START, self, "getJarModuleFileBasicArrayList")
        baseJarPath = ::Java::Lang::System.getProperty(JAR_DIR_PROP)
        if baseJarPath.start_with?(InputAutomationNewBundleRunnable::FILE)
            baseJarPath = baseJarPath[InputAutomationNewBundleRunnable::FILE.length()..]
        end
        jarFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::BasicFileFilterUtil.getInstance(".jar")
        path = baseJarPath + (InputAutomationNewBundleRunnable::INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH).to_s
        @logUtil.putF("Path: " + path, self, "getJarModuleFileBasicArrayList")
        file = File.new(path)
        @logUtil.putF("File: " + (file.getAbsolutePath()).to_s + " isDirectory: " + (file.isDirectory()).to_s, self, "getJarModuleFileBasicArrayList")
        return ::Org::Allbinary::Logic::Io::FilePackage::Directory::SubDirectory.getInstance().search(jarFileFilter, ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFile(file))
    end
    java_overload :getJarModuleFileBasicArrayList, 0
    

    # throws Exception
    def getInstalledJarSymbolicNameBasicArrayList()
        @logUtil.putF(@commonStrings.START, self, "getInstalledJarSymbolicNameBasicArrayList")
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        bundleContext = ::Bundle::Input::Automation::InputAutomationBundleActivator.getBundleContext()
        bundleArray = bundleContext.getBundles()
        if bundleArray != nil
            @logUtil.putF("bundleArray: " + (bundleArray.length).to_s, self, "getInputAutomationModuleServices")
            (0...bundleArray.length).each do |index|
                bundle = bundleArray[index]
                vector.add(bundle.getSymbolicName())
            end
        end
        return vector
    end
    java_overload :getInstalledJarSymbolicNameBasicArrayList, 0
    

    # throws Exception
    def isInstalled(symbolicName)
        @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).to_s + symbolicName, self, "isInstalled")
        list = self.getInstalledJarSymbolicNameBasicArrayList()
        size = list.size()
        nextSymbolicName = nil
        (0...size).each do |index|
            nextSymbolicName = list.get(index)
            if (nextSymbolicName <=> symbolicName) == 0
                return true
            end
        end
        return false
    end
    java_overload :isInstalled, 1
    

    # throws Exception
    def findNewModules()
        @logUtil.putF(@commonStrings.START, self, "findNewModules")
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        hashMap = self.getAllJarSymbolicNameHashMap()
        @logUtil.putF("All: " + (hashMap).to_s, self, "findNewModules")
        set = hashMap.keySet()
        symbolicNameArray = set.toArray()
        size = symbolicNameArray.length
        (0...size).each do |index|
            symbolicName = symbolicNameArray[index]
            if !self.isInstalled(symbolicName)
                vector.add(hashMap.get(symbolicName))
            end
        end
        return vector
    end
    java_overload :findNewModules, 0
    

    # throws Exception
    def install(url)
        @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START + url, self, "install")
        bundleContext = ::Bundle::Input::Automation::InputAutomationBundleActivator.getBundleContext()
        return bundleContext.installBundle(url.to_s)
    end
    java_overload :install, 1
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1000)
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                @logUtil.putF(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
                self.updateModules()
                break
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:FILE, "file:")
        const_set(:JAR_DIR_PROP, "org.knopflerfish.gosg.jars")
        const_set(:INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH, "ia/auto")
        const_set(:MODULES_START_LEVEL, 8)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputAutomationNewBundleRunnable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:FILE, :JAR_DIR_PROP, :INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH, :MODULES_START_LEVEL].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Java; module Util; module Jar; autoload :Manifest, "java/util/jar/Manifest" unless const_defined?(:Manifest, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :Bundle, "org/osgi/framework/Bundle" unless const_defined?(:Bundle, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :Constants, "org/osgi/framework/Constants" unless const_defined?(:Constants, false); end; end; end
module ::Bundle; module Input; module Automation; autoload :InputAutomationBundleActivator, "bundle/input/automation/InputAutomationBundleActivator" unless const_defined?(:InputAutomationBundleActivator, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :SubDirectory, "org/allbinary/logic/io/file/directory/SubDirectory" unless const_defined?(:SubDirectory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Filter; autoload :BasicFileFilterUtil, "org/allbinary/logic/io/file/filter/BasicFileFilterUtil" unless const_defined?(:BasicFileFilterUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
require "java/lang/Thread"
require "java/lang/System"

begin
    InputAutomationNewBundleRunnable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

