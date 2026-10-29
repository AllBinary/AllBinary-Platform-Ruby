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

# require "java/util/Collection"
# require "java/util/Map"
# require "java/util/Set"

class ServiceReferenceMap
    include Map
    attr_accessor :serviceReference

    def initialize_fields
        @serviceReference = nil
    end
    

    def initialize(serviceReference)
        initialize_fields
        @serviceReference = serviceReference
    end
    

    def size()
        return -1
    end
    

    def isEmpty()
        return false
    end
    

    def containsKey(key)
        return false
    end
    

    def containsValue(value)
        return false
    end
    

    def get(key)
        return @serviceReference.getProperty(key)
    end
    

    def put(key, value)
        return nil
    end
    

    def remove(key)
        return nil
    end
    

    def putAll(m)
    end
    

    def clear()
    end
    

    def keySet()
        keyStringArray = @serviceReference.getPropertyKeys()
        return nil
    end
    

    def values()
        return nil
    end
    

    def entrySet()
        return nil
    end
    

    def self.toString(map)
        stringBuffer = StringMaker.new()
        return stringBuffer.to_s
    end
end

require "org/osgi/framework/ServiceReference"
require "org/allbinary/logic/string/StringMaker"

