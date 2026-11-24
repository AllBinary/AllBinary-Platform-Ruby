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


module ::Org; module Allbinary; module Osgi; module Service

class InputAutomationServiceConsumer
    attr_accessor :logUtil, :commonStrings, :osgiServiceUtil, :registryName, :bundleContext, :osgiServiceVisitorInterface

    def jfields_org_allbinary_osgi_service_InputAutomationServiceConsumer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @osgiServiceUtil = OSGIServiceUtil.getInstance()
        @registryName = nil unless instance_variable_defined?(:@registryName)
        @bundleContext = nil unless instance_variable_defined?(:@bundleContext)
        @osgiServiceVisitorInterface = nil unless instance_variable_defined?(:@osgiServiceVisitorInterface)
    end
    

    def initialize(registryName, bundleContext, osgiServiceVisitorInterface)
        jfields_org_allbinary_osgi_service_InputAutomationServiceConsumer
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface" unless const_defined?(:OSGIServiceInterface, false); end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIServiceVisitorInterface, "org/allbinary/osgi/OSGIServiceVisitorInterface" unless const_defined?(:OSGIServiceVisitorInterface, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :OSGIServiceUtil, "org/allbinary/osgi/service/OSGIServiceUtil" unless const_defined?(:OSGIServiceUtil, false)

end; end; end; end

