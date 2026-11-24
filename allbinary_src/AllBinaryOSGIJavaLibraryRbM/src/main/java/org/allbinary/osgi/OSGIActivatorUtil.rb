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


module ::Org; module Allbinary; module Osgi

class OSGIActivatorUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.registerAsService_j3(bundleContext, anyType, serviceName)
        OSGIActivatorUtil.registerAsService(bundleContext, anyType, serviceName, ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    def self.registerAsService_j4(bundleContext, anyType, serviceName, properties)
        serviceRegistration = bundleContext.registerService(serviceName, anyType, properties)
        serviceReference = serviceRegistration.getReference()
        serviceReference = bundleContext.getServiceReference(serviceName)
        if serviceReference == ::Org::Osgi::Framework::NullServiceReferenceFactory.getInstance().NULL_SERVICE_REFERENCE
            raise StandardError.new("No Such Service Reference")
        end
    end

    def self.registerAsService(*java_overload_args)
        return registerAsService_j3(*java_overload_args) if java_overload_args.length == 3
        return registerAsService_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method registerAsService takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :NullServiceReferenceFactory, "org/osgi/framework/NullServiceReferenceFactory" unless const_defined?(:NullServiceReferenceFactory, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceRegistration, "org/osgi/framework/ServiceRegistration" unless const_defined?(:ServiceRegistration, false); end; end; end

end; end; end

