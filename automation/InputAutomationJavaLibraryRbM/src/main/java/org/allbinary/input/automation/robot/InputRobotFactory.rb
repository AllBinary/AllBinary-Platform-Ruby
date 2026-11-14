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
        InputRobotFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@inputRobotFactory) ? @@inputRobotFactory : nil
    end

    def self.inputRobotFactory=(value)
        InputRobotFactory.java_static_fields unless @java_static_fields_started
        @@inputRobotFactory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputRobotFactory = InputRobotFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputRobotFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Iterator, "java/util/Iterator"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :JavaHelpSetNotifier, "org/allbinary/logic/java/help/JavaHelpSetNotifier"
autoload :InterfaceUtil, "org/allbinary/logic/java/anyType/InterfaceUtil"
autoload :SecuredNativeLibraryInterface, "org/allbinary/logic/system/loader/SecuredNativeLibraryInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :InputRobot, "org/allbinary/input/automation/robot/InputRobot"
autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface"

begin
    InputRobotFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

