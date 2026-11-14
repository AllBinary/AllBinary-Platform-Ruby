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


class OSGIServiceUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return OSGIServiceUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getServicesObjectVector(bundleContext, serviceReferences)
        vector = BasicArrayListD.new()
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

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :BundleContext, "org/osgi/framework/BundleContext"
autoload :ServiceReference, "org/osgi/framework/ServiceReference"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface"

begin
    OSGIServiceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

