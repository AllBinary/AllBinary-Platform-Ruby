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
# package org.allbinary.osgi


class OSGIActivatorUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.registerAsService(bundleContext, anyType, serviceName)
        OSGIActivatorUtil.registerAsService(bundleContext, anyType, serviceName, StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.registerAsService(bundleContext, anyType, serviceName, properties)
        serviceRegistration = bundleContext.registerService(serviceName, anyType, properties)
        serviceReference = serviceRegistration.getReference()
        serviceReference = bundleContext.getServiceReference(serviceName)
        if serviceReference == NullServiceReferenceFactory.getInstance().NULL_SERVICE_REFERENCE
            raise StandardError.new("No Such Service Reference")
        end
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/osgi/framework/BundleContext"
require "org/osgi/framework/NullServiceReferenceFactory"
require "org/osgi/framework/ServiceReference"
require "org/osgi/framework/ServiceRegistration"

