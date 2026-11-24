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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "java/util/Hashtable"
# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Util

class ABHashtable < ::Java::Util::Hashtable
    

    def initialize()
        super()
    end
    

    def size()
        return ABHashtable.superclass.java_super_method(:size, 0).bind(self).call()
    end
    java_overload :size, 0
    

    def isEmpty()
        return ABHashtable.superclass.java_super_method(:isEmpty, 0).bind(self).call()
    end
    java_overload :isEmpty, 0
    

    def elements()
        return ABHashtable.superclass.java_super_method(:elements, 0).bind(self).call()
    end
    java_overload :elements, 0
    

    def contains(value)
        return ABHashtable.superclass.java_super_method(:contains, 1).bind(self).call(value)
    end
    java_overload :contains, 1
    

    def containsValue(value)
        return ABHashtable.superclass.java_super_method(:containsValue, 1).bind(self).call(value)
    end
    java_overload :containsValue, 1
    

    def containsKey(key)
        return ABHashtable.superclass.java_super_method(:containsKey, 1).bind(self).call(key)
    end
    java_overload :containsKey, 1
    

    def get(key)
        return ABHashtable.superclass.java_super_method(:get, 1).bind(self).call(key)
    end
    java_overload :get, 1
    

    def clear()
        ABHashtable.superclass.java_super_method(:clear, 0).bind(self).call()
    end
    java_overload :clear, 0
    

    def clone()
        return ABHashtable.superclass.java_super_method(:clone, 0).bind(self).call()
    end
    java_overload :clone, 0
    

    def toString()
        return super.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def equals(obj)
        return ABHashtable.superclass.java_super_method(:equals, 1).bind(self).call(obj)
    end
    java_overload :equals, 1
    alias_method :==, :equals
    

    def hashCode()
        return super.hash
    end
    java_overload :hashCode, 0
    alias_method :hash, :hashCode
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end

end; end; end

