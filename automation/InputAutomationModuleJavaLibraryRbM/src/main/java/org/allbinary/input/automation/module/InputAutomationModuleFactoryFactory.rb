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
# package org.allbinary.input.automation.module

# require "java/util/Collection"
# require "javax/help/HelpSet"
# require "javax/help/event/HelpSetEvent"
# require "javax/help/event/HelpSetListener"
# require "javax/swing/ListModel"

class InputAutomationModuleFactoryFactory
    attr_accessor :logUtil, :hashMap, :defaultListModelHelper, :helpSetListenerInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @hashMap = nil
        @defaultListModelHelper = nil
        @helpSetListenerInterface = nil
    end
    

    def initialize(inputAutomationModuleConfigurations, helpSetListenerInterface)
        initialize_fields
        @helpSetListenerInterface = helpSetListenerInterface
        @defaultListModelHelper = DefaultListModelHelper.new()
        @hashMap = StdUtil.getInstance().createHashMap()
        collection = inputAutomationModuleConfigurations.getHashMap().values()
        iterator = collection.iterator()
        inputAutomationModuleConfiguration = nil
        while iterator.hasNext()
            inputAutomationModuleConfiguration = iterator.next_()
            self.add(inputAutomationModuleConfiguration)
        end
        @defaultListModelHelper.initDefaultModelList()
        @logUtil.putF("Loaded " + (@hashMap.size()).to_s + "/" + (@defaultListModelHelper.getListModel().getSize()).to_s + " Input Automation Modules", self, "Contructor")
    end
    

    def add(inputAutomationModuleConfiguration)
        inputAutomationModuleInterface = inputAutomationModuleConfiguration.getInputAutomationModuleInterface()
        @hashMap.put(inputAutomationModuleConfiguration.getName(), inputAutomationModuleInterface)
        @defaultListModelHelper.add(inputAutomationModuleConfiguration.getName())
        helpSet = inputAutomationModuleInterface.getHelpSet()
        if !JavaHelpSetNotifier.isNotified(helpSet)
            helpSetEvent = HelpSetEvent.new(self, helpSet, HelpSetEvent::HELPSET_ADDED)
            @helpSetListenerInterface.helpSetAdded(helpSetEvent)
        end
    end
    

    def getListModel()
        return @defaultListModelHelper.getListModel()
    end
    

    def getInstance(moduleName)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF("Getting Module: " + moduleName, self, commonStrings.GET_INSTANCE)
        inputAutomationModuleFactoryInterface = @hashMap.get(moduleName)
        if inputAutomationModuleFactoryInterface == nil
            @logUtil.putF("Module: " + moduleName + " was null", self, commonStrings.GET_INSTANCE)
        end
        return inputAutomationModuleFactoryInterface
    end
end

require "java/util/HashMap"
require "java/util/Iterator"
require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration"
require "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/help/JavaHelpSetNotifier"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/module/DefaultListModelHelper"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"

