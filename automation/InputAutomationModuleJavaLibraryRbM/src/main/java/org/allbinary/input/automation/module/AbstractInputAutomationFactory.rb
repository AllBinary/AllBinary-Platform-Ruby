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

require "java/lang/JavaOverload"
# require "java/net/URL"
# require "javax/help/HelpSet"
# require "javax/swing/JPanel"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class AbstractInputAutomationFactory < InputAutomationModuleFactoryInterface
    attr_accessor :name, :jPanel, :helpSet

    def jfields_org_allbinary_input_automation_module_AbstractInputAutomationFactory
        @name = nil unless instance_variable_defined?(:@name)
        @jPanel = nil unless instance_variable_defined?(:@jPanel)
        @helpSet = nil unless instance_variable_defined?(:@helpSet)
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_input_automation_module_AbstractInputAutomationFactory_3(*args)
        when 2 then jnew_org_allbinary_input_automation_module_AbstractInputAutomationFactory_2(*args)
        else raise ArgumentError, "No constructor of AbstractInputAutomationFactory takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_AbstractInputAutomationFactory_3(name, jPanel, helpSet)
        AbstractInputAutomationFactory.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_input_automation_module_AbstractInputAutomationFactory
        @name = name
        @jPanel = jPanel
        @helpSet = helpSet
    end
    

    def jnew_org_allbinary_input_automation_module_AbstractInputAutomationFactory_2(name, jPanel)
        AbstractInputAutomationFactory.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_input_automation_module_AbstractInputAutomationFactory
        @name = name
        @jPanel = jPanel
        url = self.class.getResource("/help/Help.hs")
        @helpSet = ::Org::Allbinary::Logic::Java::Help::JavaHelpUtil.getInstance().getHelpSet(url)
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getConfigurationJPanel()
        return @jPanel
    end
    java_overload :getConfigurationJPanel, 0
    

    def getHelpSet()
        return @helpSet
    end
    java_overload :getHelpSet, 0
end

module ::Org; module Allbinary; module Logic; module Java; module Help; autoload :JavaHelpUtil, "org/allbinary/logic/java/help/JavaHelpUtil" unless const_defined?(:JavaHelpUtil, false); end; end; end; end; end

end; end; end; end; end

