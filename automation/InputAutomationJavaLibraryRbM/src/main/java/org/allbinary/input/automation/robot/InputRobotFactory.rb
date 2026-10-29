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
# package org.allbinary.input.automation.robot

# require "java/awt/GraphicsDevice"
# require "java/awt/GraphicsEnvironment"
# require "java/util/Collection"
# require "java/util/Set"
# require "javax/help/HelpSet"
# require "javax/help/event/HelpSetEvent"
# require "javax/help/event/HelpSetListener"

class InputRobotFactory
    attr_accessor :logUtil, :commonStrings, :hashtable, :helpSetListenerInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
        @helpSetListenerInterface = nil
    end
    

    # throws Exception
    def self.getInstance()
        return InputRobotFactory.inputRobotFactory
    end
    

    def initialize()
        initialize_fields
        begin
            graphenv = GraphicsEnvironment.getLocalGraphicsEnvironment()
            screens = graphenv.getScreenDevices()
            inputRobotInterface = nil
            (0...screens.length).each do |i|
                inputRobotInterface = InputRobot.new(screens[i])
                @logUtil.putF("Adding Robot: " + inputRobotInterface.getName(), self, "getRobots")
                self.get().put(inputRobotInterface.getName(), inputRobotInterface)
            end
            @logUtil.putF("Number Of Robots: " + (@hashtable.size()).to_s, self, "getRobots")
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def addListener(helpSetListenerInterface)
        @helpSetListenerInterface = helpSetListenerInterface
    end
    

    # throws Exception
    def add(inputRobotInterface)
        @logUtil.putF("Adding InputRobotInterface: " + inputRobotInterface.getName(), self, "add")
        self.get().put(inputRobotInterface.getName(), inputRobotInterface)
        helpSet = inputRobotInterface.getHelpSet()
        if @helpSetListenerInterface != nil
            if helpSet != nil
                if !JavaHelpSetNotifier.isNotified(helpSet)
                    helpSetEvent = HelpSetEvent.new(self, helpSet, HelpSetEvent::HELPSET_ADDED)
                    @helpSetListenerInterface.helpSetAdded(helpSetEvent)
                end
            else
                @logUtil.putF("Null HelpSet For: " + inputRobotInterface.getName(), self, "add")
            end
        else
            @logUtil.putF("No HelpSet Listener", self, "add")
        end
    end
    

    # throws Exception
    def loadLibraries()
        set = self.get().keySet()
        @logUtil.putF("Loading Libraries", self, "loadLibraries")
        nameArray = set.toArray()
        size = nameArray.length
        (0...size).each do |index|
            inputRobotInterface = InputRobotFactory.getInstance().get(nameArray[index])
            InputRobotFactory.loadLibrary(inputRobotInterface)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.loadLibraries(collection)
        logUtil = LogUtil.getInstance()
        logUtil.putF("Loading Libraries", "InputRobotFactory", "loadLibraries")
        iterator = collection.iterator()
        while iterator.hasNext()
            InputRobotFactory.loadLibrary(iterator.next_())
        end
    end
    

    # throws Exception
    def self.loadLibrary(inputRobotInterface)
        logUtil = LogUtil.getInstance()
        if InterfaceUtil.isImplemented(SecuredNativeLibraryInterface, inputRobotInterface)
            logUtil.putF("Loading Library: " + inputRobotInterface.getName(), "InputRobotFactory", "loadLibraries")
            securedNativeLibraryInterface = inputRobotInterface
            securedNativeLibraryInterface.load()
        end
    end
    

    # throws Exception
    def unloadLibraries()
        @logUtil.putF("Unloading Libraries", self, "unloadLibraries")
        set = self.get().keySet()
        inputRobotInterface = nil
        inputRobotArray = set.toArray()
        size = inputRobotArray.length
        (0...size).each do |index|
            inputRobotInterface = self.get(inputRobotArray[index])
            if InterfaceUtil.isImplemented(SecuredNativeLibraryInterface, inputRobotInterface)
                @logUtil.putF("Unloading Library: " + inputRobotInterface.getName(), self, "unloadLibraries")
                securedNativeLibraryInterface = inputRobotInterface
                securedNativeLibraryInterface.unload()
            end
        end
    end
    

    # throws Exception
    def get()
        return @hashtable
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def get(name)
        @logUtil.putF("Getting Robot: " + name, self, "getRobots")
        return @hashtable.get(name)
    end

    def self.inputRobotFactory()
        return defined?(@@inputRobotFactory) ? @@inputRobotFactory : nil
    end

    def self.inputRobotFactory=(value)
        @@inputRobotFactory = value
    end
end

require "java/util/Iterator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/help/JavaHelpSetNotifier"
require "org/allbinary/logic/java/anyType/InterfaceUtil"
require "org/allbinary/logic/system/loader/SecuredNativeLibraryInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/input/automation/robot/InputRobot"
require "org/allbinary/input/automation/robot/InputRobotInterface"

class InputRobotFactory
    @@inputRobotFactory = InputRobotFactory.new()
end

