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
# package org.allbinary.input.automation.osgi

# require "javax/swing"

class DesktopBundle
    attr_accessor :bundle

    def initialize_fields
        @bundle = nil
    end
    

    def initialize()
        initialize_fields
        bundleContext = InputAutomationBundleActivator.getBundleContext()
        if bundleContext != nil
            bundleArray = bundleContext.getBundles()
            (0...bundleArray.length).each do |index|
                bundle = bundleArray[index]
                symbolicName = bundle.getSymbolicName()
                if (symbolicName <=> DesktopBundle::DESKTOP_SYMBOLIC_NAME) == 0
                    @bundle = bundle
                end
            end
        else
            textJDialog = BasicTextJDialog.new("BundlContext is Null")
            textJDialog.setVisible(true)
        end
    end
    

    # throws Exception
    def start()
        @bundle.start()
    end
end

require "org/osgi/framework/Bundle"
require "org/osgi/framework/BundleContext"
require "bundle/input/automation/InputAutomationBundleActivator"
require "org/allbinary/gui/dialog/BasicTextJDialog"

class DesktopBundle
    DESKTOP_SYMBOLIC_NAME = "org.knopflerfish.bundle.desktop"
end

