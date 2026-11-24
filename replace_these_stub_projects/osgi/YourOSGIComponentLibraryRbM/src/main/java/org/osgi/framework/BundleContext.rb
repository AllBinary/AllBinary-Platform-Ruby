# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.osgi.framework

# require "java/util/Dictionary"

module ::Org; module Osgi; module Framework

module BundleContext
    

    def getBundles()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws BundleException
    def installBundle(location)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def registerService(clazz, service, properties)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getService(reference)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws InvalidSyntaxException
    def getServiceReferences(clazz, filter)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getServiceReference(clazz)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Bundle, "org/osgi/framework/Bundle" unless const_defined?(:Bundle, false)
autoload :BundleException, "org/osgi/framework/BundleException" unless const_defined?(:BundleException, false)
autoload :InvalidSyntaxException, "org/osgi/framework/InvalidSyntaxException" unless const_defined?(:InvalidSyntaxException, false)
autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false)
autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false)

end; end; end

