# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.osgi.framework

# require "java/util/Dictionary"

module BundleContext
    

    def getBundles()
        raise NotImplementedError
    end
    

    # throws BundleException
    def installBundle(location)
        raise NotImplementedError
    end
    

    def registerService(clazz, service, properties)
        raise NotImplementedError
    end
    

    def getService(reference)
        raise NotImplementedError
    end
    

    # throws InvalidSyntaxException
    def getServiceReferences(clazz, filter)
        raise NotImplementedError
    end
    

    def getServiceReference(clazz)
        raise NotImplementedError
    end
end

require "org/osgi/framework/Bundle"
require "org/osgi/framework/BundleException"
require "org/osgi/framework/InvalidSyntaxException"
require "org/osgi/framework/ServiceReference"
require "org/osgi/framework/ServiceRegistration"

