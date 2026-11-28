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

class OSGIServiceUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_osgi_service_OSGIServiceUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_osgi_service_OSGIServiceUtil
    end
    

    # throws Exception
    def getServicesObjectVector(bundleContext, serviceReferences)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        if serviceReferences != nil
            size = serviceReferences.length
            @logUtil.putF("Service References: " + (size).to_s, self, "getServicesObjectVector")
            (0...size).each do |index|
                serviceReference = serviceReferences[index]
                if serviceReference != nil
                    osgiServiceInterface = bundleContext.getService(serviceReference)
                    if osgiServiceInterface == nil
                        raise StandardError.new("No Service For Reference")
                    end
                    vector.add(osgiServiceInterface)
                end
            end
        end
        return vector
    end

    def self.instance()
        OSGIServiceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OSGIServiceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OSGIServiceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OSGIServiceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :BundleContext, "org/osgi/framework/BundleContext" unless const_defined?(:BundleContext, false); end; end; end
module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Osgi; autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface" unless const_defined?(:OSGIServiceInterface, false); end; end; end

begin
    OSGIServiceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

