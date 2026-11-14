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

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BundleContext, "org/osgi/framework/BundleContext"
autoload :NullServiceReferenceFactory, "org/osgi/framework/NullServiceReferenceFactory"
autoload :ServiceReference, "org/osgi/framework/ServiceReference"
autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration"

