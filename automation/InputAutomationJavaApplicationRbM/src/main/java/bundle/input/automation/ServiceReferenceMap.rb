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
# package bundle.input.automation

require "java/lang/JavaOverload"
# require "java/util/Collection"
# require "java/util/Map"
# require "java/util/Set"

module ::Bundle; module Input; module Automation

class ServiceReferenceMap
    include Map
    attr_accessor :serviceReference

    def jfields_bundle_input_automation_ServiceReferenceMap
        @serviceReference = nil unless instance_variable_defined?(:@serviceReference)
    end
    

    def initialize(serviceReference)
        jfields_bundle_input_automation_ServiceReferenceMap
        @serviceReference = serviceReference
    end
    

    def size()
        return -1
    end
    java_overload :size, 0
    

    def isEmpty()
        return false
    end
    java_overload :isEmpty, 0
    

    def containsKey(key)
        return false
    end
    java_overload :containsKey, 1
    

    def containsValue(value)
        return false
    end
    java_overload :containsValue, 1
    

    def get(key)
        return @serviceReference.getProperty(key)
    end
    java_overload :get, 1
    

    def put(key, value)
        return nil
    end
    java_overload :put, 2
    

    def remove(key)
        return nil
    end
    java_overload :remove, 1
    

    def putAll(m)
    end
    java_overload :putAll, 1
    

    def clear()
    end
    java_overload :clear, 0
    

    def keySet()
        keyStringArray = @serviceReference.getPropertyKeys()
        return nil
    end
    java_overload :keySet, 0
    

    def values()
        return nil
    end
    java_overload :values, 0
    

    def entrySet()
        return nil
    end
    java_overload :entrySet, 0
    

    def self.toString(map)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        return stringBuffer.to_s
    end
end

module ::Org; module Osgi; module Framework; autoload :ServiceReference, "org/osgi/framework/ServiceReference" unless const_defined?(:ServiceReference, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end

