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

require "java/lang/JavaClass"
# require "java/awt/GraphicsDevice"
# require "java/awt/GraphicsEnvironment"
# require "java/util/Collection"
# require "java/util/Set"
# require "javax/help/HelpSet"
# require "javax/help/event/HelpSetEvent"
# require "javax/help/event/HelpSetListener"

module ::Org; module Allbinary; module Input; module Automation; module Robot

class InputRobotFactory
    attr_accessor :logUtil, :commonStrings, :hashtable, :helpSetListenerInterface

    def jfields_org_allbinary_input_automation_robot_InputRobotFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @helpSetListenerInterface = nil unless instance_variable_defined?(:@helpSetListenerInterface)
    end
    

    # throws Exception
    def self.getInstance()
        return InputRobotFactory.inputRobotFactory
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_robot_InputRobotFactory
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
                if !::Org::Allbinary::Logic::Java::Help::JavaHelpSetNotifier.isNotified(helpSet)
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
    def self.loadLibraries(collection)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        logUtil.putF("Loading Libraries", "InputRobotFactory", "loadLibraries")
        iterator = collection.iterator()
        while iterator.hasNext()
            InputRobotFactory.loadLibrary(iterator.next_())
        end
    end
    

    # throws Exception
    def self.loadLibrary(inputRobotInterface)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        if ::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.isImplemented(::Org::Allbinary::Logic::System::Loader::SecuredNativeLibraryInterface, inputRobotInterface)
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
            if ::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.isImplemented(::Org::Allbinary::Logic::System::Loader::SecuredNativeLibraryInterface, inputRobotInterface)
                @logUtil.putF("Unloading Library: " + inputRobotInterface.getName(), self, "unloadLibraries")
                securedNativeLibraryInterface = inputRobotInterface
                securedNativeLibraryInterface.unload()
            end
        end
    end
    

    # throws Exception
    def get_j0()
        return @hashtable
    end
    

    def get_j1(name)
        @logUtil.putF("Getting Robot: " + name, self, "getRobots")
        return @hashtable.get(name)
    end

    def get(*java_overload_args)
        return get_j0(*java_overload_args) if java_overload_args.length == 0
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
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

module ::Java; module Util; autoload :Iterator, "java/util/Iterator" unless const_defined?(:Iterator, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Help; autoload :JavaHelpSetNotifier, "org/allbinary/logic/java/help/JavaHelpSetNotifier" unless const_defined?(:JavaHelpSetNotifier, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :InterfaceUtil, "org/allbinary/logic/java/anyType/InterfaceUtil" unless const_defined?(:InterfaceUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :SecuredNativeLibraryInterface, "org/allbinary/logic/system/loader/SecuredNativeLibraryInterface" unless const_defined?(:SecuredNativeLibraryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :InputRobot, "org/allbinary/input/automation/robot/InputRobot" unless const_defined?(:InputRobot, false)
autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false)

begin
    InputRobotFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

