# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.util

require "java/lang/JavaOverload"
require "java/util/HashMap"
# require "java/util/Map"
# require "java/util/Set"
# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Util

class ABHashMap < ::Java::Util::HashMap
    

    def size()
        return ABHashMap.superclass.java_super_method(:size, 0).bind(self).call()
    end
    java_overload :size, 0
    

    def isEmpty()
        return ABHashMap.superclass.java_super_method(:isEmpty, 0).bind(self).call()
    end
    java_overload :isEmpty, 0
    

    def get(key)
        return ABHashMap.superclass.java_super_method(:get, 1).bind(self).call(key)
    end
    java_overload :get, 1
    

    def containsKey(key)
        return ABHashMap.superclass.java_super_method(:containsKey, 1).bind(self).call(key)
    end
    java_overload :containsKey, 1
    

    def put(key, value)
        return ABHashMap.superclass.java_super_method(:put, 2).bind(self).call(key, value)
    end
    java_overload :put, 2
    

    def putAll(map)
        ABHashMap.superclass.java_super_method(:putAll, 1).bind(self).call(map)
    end
    java_overload :putAll, 1
    

    def remove(key)
        return ABHashMap.superclass.java_super_method(:remove, 1).bind(self).call(key)
    end
    java_overload :remove, 1
    

    def clear()
        ABHashMap.superclass.java_super_method(:clear, 0).bind(self).call()
    end
    java_overload :clear, 0
    

    def containsValue(value)
        return ABHashMap.superclass.java_super_method(:containsValue, 1).bind(self).call(value)
    end
    java_overload :containsValue, 1
    

    def keySet()
        return ABHashMap.superclass.java_super_method(:keySet, 0).bind(self).call()
    end
    java_overload :keySet, 0
    

    def entrySet()
        return ABHashMap.superclass.java_super_method(:entrySet, 0).bind(self).call()
    end
    java_overload :entrySet, 0
    

    def getOrDefault(key, defaultValue)
        return ABHashMap.superclass.java_super_method(:getOrDefault, 2).bind(self).call(key, defaultValue)
    end
    java_overload :getOrDefault, 2
    

    def putIfAbsent(key, value)
        return ABHashMap.superclass.java_super_method(:putIfAbsent, 2).bind(self).call(key, value)
    end
    java_overload :putIfAbsent, 2
    

    def clone()
        return ABHashMap.superclass.java_super_method(:clone, 0).bind(self).call()
    end
    java_overload :clone, 0
end

end; end; end

