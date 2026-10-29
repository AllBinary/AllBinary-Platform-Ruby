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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/osgi/framework/BundleContext"
require "org/osgi/framework/ServiceReference"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/osgi/OSGIServiceInterface"

class OSGIServiceUtil
    @@instance = OSGIServiceUtil.new()
end

