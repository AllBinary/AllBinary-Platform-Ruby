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
# require "java/io/File"
# require "java/io/FileFilter"
# require "java/io/FileInputStream"
# require "java/net/URL"
# require "java/util/Set"
# require "java/util/jar/JarInputStream"
# require "java/util/jar/Manifest"
require "org/allbinary/thread/RunnableInterface"

class InputAutomationNewBundleRunnable
    include RunnableInterface
    attr_accessor :logUtil, :commonStrings, :inputAutomationBundleActivator, :running, :fileBasicArrayList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputAutomationBundleActivator = nil
        @running = false
        @fileBasicArrayList = nil
    end
    

    def initialize(inputAutomationBundleActivator)
        initialize_fields
        @inputAutomationBundleActivator = inputAutomationBundleActivator
        @fileBasicArrayList = BasicArrayListD.new()
    end
    

    # throws Exception
    def setThread(thread)
    end
    

    def isRunning()
        java_monitor.synchronize do
        return @running
        end
    end
    

    def setRunning(running)
        java_monitor.synchronize do
        @running = running
        end
    end
    

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
    

    # throws Exception
    def getAllJarSymbolicNameHashMap()
        @logUtil.putF(@commonStrings.START, self, "getAllJarSymbolicNameHashMap")
        hashMap = StdUtil.getInstance().createHashMap()
        jarFileBasicArrayList = self.getJarModuleFileBasicArrayList()
        @logUtil.putF("Jar Module Files: " + (jarFileBasicArrayList).to_s, self, "getAllJarSymbolicNameHashMap")
        size = jarFileBasicArrayList.size()
        file = nil
        (0...size).each do |index|
            file = jarFileBasicArrayList.get(index)
            if !file.isDirectory()
                fileInputStream = FileInputStream.new(file)
                jarInputStream = JarInputStream.new(fileInputStream)
                manifest = jarInputStream.getManifest()
                if manifest == nil
                else
                    symbolicName = manifest.getMainAttributes().getValue(Constants::BUNDLE_SYMBOLICNAME)
                    if symbolicName != nil
                        hashMap.put(symbolicName, URL.new(InputAutomationNewBundleRunnable::FILE + file.getAbsolutePath()))
                    end
                end
            end
        end
        return hashMap
    end
    

    def getJarModuleFileBasicArrayList()
        @logUtil.putF(@commonStrings.START, self, "getJarModuleFileBasicArrayList")
        baseJarPath = System.getProperty(JAR_DIR_PROP)
        if baseJarPath.start_with?(InputAutomationNewBundleRunnable::FILE)
            baseJarPath = baseJarPath[InputAutomationNewBundleRunnable::FILE.length()..]
        end
        jarFileFilter = BasicFileFilterUtil.getInstance(".jar")
        path = baseJarPath + (InputAutomationNewBundleRunnable::INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH).to_s
        @logUtil.putF("Path: " + path, self, "getJarModuleFileBasicArrayList")
        file = File.new(path)
        @logUtil.putF("File: " + (file.getAbsolutePath()).to_s + " isDirectory: " + (file.isDirectory()).to_s, self, "getJarModuleFileBasicArrayList")
        return SubDirectory.getInstance().search(jarFileFilter, FileWrapperUtil.wrapFile(file))
    end
    

    # throws Exception
    def getInstalledJarSymbolicNameBasicArrayList()
        @logUtil.putF(@commonStrings.START, self, "getInstalledJarSymbolicNameBasicArrayList")
        vector = BasicArrayListD.new()
        bundleContext = InputAutomationBundleActivator.getBundleContext()
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
    

    # throws Exception
    def isInstalled(symbolicName)
        @logUtil.putF((CommonLabels.getInstance().START).to_s + symbolicName, self, "isInstalled")
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
    

    # throws Exception
    def findNewModules()
        @logUtil.putF(@commonStrings.START, self, "findNewModules")
        vector = BasicArrayListD.new()
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
    

    # throws Exception
    def install(url)
        @logUtil.putF(CommonLabels.getInstance().START + url, self, "install")
        bundleContext = InputAutomationBundleActivator.getBundleContext()
        return bundleContext.installBundle(url.to_s)
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.RUN)
            self.setRunning(true)
            timeHelper = TimeDelayHelper.new(1000)
            while self.isRunning()
                timeHelper.setStartTimeTNT()
                @logUtil.putF(CommonLabels.getInstance().ELAPSED + timeHelper.getElapsedTNT(), self, @commonStrings.RUN)
                self.updateModules()
                break
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
end

require "java/util/HashMap"
require "org/osgi/framework/Bundle"
require "org/osgi/framework/BundleContext"
require "org/osgi/framework/Constants"
require "bundle/input/automation/InputAutomationBundleActivator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/logic/io/file/directory/SubDirectory"
require "org/allbinary/logic/io/file/filter/BasicFileFilterUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "java/lang/Thread"
require "java/lang/System"

class InputAutomationNewBundleRunnable
    FILE = "file:"
    JAR_DIR_PROP = "org.knopflerfish.gosg.jars"
    INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH = "ia/auto"
    MODULES_START_LEVEL = 8
end

