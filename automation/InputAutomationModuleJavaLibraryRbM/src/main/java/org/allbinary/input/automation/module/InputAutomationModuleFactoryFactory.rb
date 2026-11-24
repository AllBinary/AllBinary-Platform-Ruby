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

require "java/lang/JavaClass"
# require "java/util/Collection"
# require "javax/help/HelpSet"
# require "javax/help/event/HelpSetEvent"
# require "javax/help/event/HelpSetListener"
# require "javax/swing/ListModel"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class InputAutomationModuleFactoryFactory
    attr_accessor :logUtil, :hashMap, :defaultListModelHelper, :helpSetListenerInterface

    def jfields_org_allbinary_input_automation_module_InputAutomationModuleFactoryFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
        @defaultListModelHelper = nil unless instance_variable_defined?(:@defaultListModelHelper)
        @helpSetListenerInterface = nil unless instance_variable_defined?(:@helpSetListenerInterface)
    end
    

    def initialize(inputAutomationModuleConfigurations, helpSetListenerInterface)
        jfields_org_allbinary_input_automation_module_InputAutomationModuleFactoryFactory
        @helpSetListenerInterface = helpSetListenerInterface
        @defaultListModelHelper = DefaultListModelHelper.new()
        @hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
        if !::Org::Allbinary::Logic::Java::Help::JavaHelpSetNotifier.isNotified(helpSet)
            helpSetEvent = HelpSetEvent.new(self, helpSet, HelpSetEvent::HELPSET_ADDED)
            @helpSetListenerInterface.helpSetAdded(helpSetEvent)
        end
    end
    

    def getListModel()
        return @defaultListModelHelper.getListModel()
    end
    

    def getInstance(moduleName)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF("Getting Module: " + moduleName, self, commonStrings.GET_INSTANCE)
        inputAutomationModuleFactoryInterface = @hashMap.get(moduleName)
        if inputAutomationModuleFactoryInterface == nil
            @logUtil.putF("Module: " + moduleName + " was null", self, commonStrings.GET_INSTANCE)
        end
        return inputAutomationModuleFactoryInterface
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Java; module Util; autoload :Iterator, "java/util/Iterator" unless const_defined?(:Iterator, false); end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfiguration, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration" unless const_defined?(:InputAutomationModuleConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Configuration; autoload :InputAutomationModuleConfigurations, "org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations" unless const_defined?(:InputAutomationModuleConfigurations, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Help; autoload :JavaHelpSetNotifier, "org/allbinary/logic/java/help/JavaHelpSetNotifier" unless const_defined?(:JavaHelpSetNotifier, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DefaultListModelHelper, "org/allbinary/input/automation/module/DefaultListModelHelper" unless const_defined?(:DefaultListModelHelper, false)
autoload :InputAutomationModuleFactoryInterface, "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface" unless const_defined?(:InputAutomationModuleFactoryInterface, false)

end; end; end; end; end

