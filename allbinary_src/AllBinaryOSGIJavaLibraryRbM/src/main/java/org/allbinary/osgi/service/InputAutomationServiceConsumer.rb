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
# package org.allbinary.osgi.service


class InputAutomationServiceConsumer
    attr_accessor :logUtil, :commonStrings, :osgiServiceUtil, :registryName, :bundleContext, :osgiServiceVisitorInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @osgiServiceUtil = OSGIServiceUtil.getInstance()
        @registryName = nil
        @bundleContext = nil
        @osgiServiceVisitorInterface = nil
    end
    

    def initialize(registryName, bundleContext, osgiServiceVisitorInterface)
        initialize_fields
        self.setRegistryName(registryName)
        self.setBundleContext(bundleContext)
        self.setOsgiServiceVisitorInterface(osgiServiceVisitorInterface)
    end
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        vector = @osgiServiceUtil.getServicesObjectVector(self.getBundleContext(), self.getServiceReferences())
        @logUtil.putF("Processing " + (vector.size()).to_s + " Services", self, @commonStrings.PROCESS)
        size = vector.size()
        osgiServiceInterface = nil
        (0...size).each do |index|
            osgiServiceInterface = vector.get(index)
            if !getOsgiServiceVisitorInterface().visit(osgiServiceInterface)
                raise StandardError.new("Unable to process service: " + (osgiServiceInterface).to_s)
            end
        end
    end
    

    # throws Exception
    def getServiceReferences()
        return self.getBundleContext().getServiceReferences(self.getRegistryName(), nil)
    end
    

    def getBundleContext()
        return @bundleContext
    end
    

    def setBundleContext(aBundleContext)
        @bundleContext = aBundleContext
    end
    

    def getRegistryName()
        return @registryName
    end
    

    def setRegistryName(registryName)
        @registryName = registryName
    end
    

    def getOsgiServiceVisitorInterface()
        return @osgiServiceVisitorInterface
    end
    

    def setOsgiServiceVisitorInterface(osgiServiceVisitorInterface)
        @osgiServiceVisitorInterface = osgiServiceVisitorInterface
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/osgi/framework/BundleContext"
require "org/osgi/framework/ServiceReference"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIServiceInterface"
require "org/allbinary/osgi/OSGIServiceVisitorInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/osgi/service/OSGIServiceUtil"

