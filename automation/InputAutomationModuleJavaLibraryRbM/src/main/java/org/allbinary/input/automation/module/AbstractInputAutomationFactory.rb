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

# require "java/net/URL"
# require "javax/help/HelpSet"
# require "javax/swing"
require "org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface"

class AbstractInputAutomationFactory < InputAutomationModuleFactoryInterface
    attr_accessor :name, :jPanel, :helpSet

    def initialize_fields
        @name = nil
        @jPanel = nil
        @helpSet = nil
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor3(name, jPanel, helpSet)
        method(:initialize).super_method.call()
        initialize_fields
        @name = name
        @jPanel = jPanel
        @helpSet = helpSet
    end
    

    def constructor2(name, jPanel)
        method(:initialize).super_method.call()
        initialize_fields
        @name = name
        @jPanel = jPanel
        url = self.class.getResource("/help/Help.hs")
        @helpSet = JavaHelpUtil.getInstance().getHelpSet(url)
    end
    

    def getName()
        return @name
    end
    

    def getConfigurationJPanel()
        return @jPanel
    end
    

    def getHelpSet()
        return @helpSet
    end
end

require "org/allbinary/logic/java/help/JavaHelpUtil"

