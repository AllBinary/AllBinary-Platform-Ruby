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
require "java/util/Vector"
# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Util

class ABVector < ::Java::Util::Vector
    

    def ensureCapacity(minCapacity)
        ABVector.superclass.java_super_method(:ensureCapacity, 1).bind(self).call(minCapacity)
    end
    java_overload :ensureCapacity, 1
    

    def capacity()
        return ABVector.superclass.java_super_method(:capacity, 0).bind(self).call()
    end
    java_overload :capacity, 0
    

    def size()
        return ABVector.superclass.java_super_method(:size, 0).bind(self).call()
    end
    java_overload :size, 0
    

    def isEmpty()
        return ABVector.superclass.java_super_method(:isEmpty, 0).bind(self).call()
    end
    java_overload :isEmpty, 0
    

    def contains(obj)
        return ABVector.superclass.java_super_method(:contains, 1).bind(self).call(obj)
    end
    java_overload :contains, 1
    

    def indexOf(obj)
        return ABVector.superclass.java_super_method(:indexOf, 1).bind(self).call(obj)
    end
    java_overload :indexOf, 1
    

    def lastIndexOf(obj)
        return ABVector.superclass.java_super_method(:lastIndexOf, 1).bind(self).call(obj)
    end
    java_overload :lastIndexOf, 1
    

    def elementAt(index)
        return ABVector.superclass.java_super_method(:elementAt, 1).bind(self).call(index)
    end
    java_overload :elementAt, 1
    

    def firstElement()
        return ABVector.superclass.java_super_method(:firstElement, 0).bind(self).call()
    end
    java_overload :firstElement, 0
    

    def lastElement()
        return ABVector.superclass.java_super_method(:lastElement, 0).bind(self).call()
    end
    java_overload :lastElement, 0
    

    def setElementAt(obj, index)
        ABVector.superclass.java_super_method(:setElementAt, 2).bind(self).call(obj, index)
    end
    java_overload :setElementAt, 2
    

    def removeElementAt(index)
        ABVector.superclass.java_super_method(:removeElementAt, 1).bind(self).call(index)
    end
    java_overload :removeElementAt, 1
    

    def addElement(obj)
        ABVector.superclass.java_super_method(:addElement, 1).bind(self).call(obj)
    end
    java_overload :addElement, 1
    

    def insertElementAt(obj, index)
        ABVector.superclass.java_super_method(:insertElementAt, 2).bind(self).call(obj, index)
    end
    java_overload :insertElementAt, 2
    

    def removeElement(obj)
        return ABVector.superclass.java_super_method(:removeElement, 1).bind(self).call(obj)
    end
    java_overload :removeElement, 1
    

    def removeAllElements()
        ABVector.superclass.java_super_method(:removeAllElements, 0).bind(self).call()
    end
    java_overload :removeAllElements, 0
    

    def clone()
        return ABVector.superclass.java_super_method(:clone, 0).bind(self).call()
    end
    java_overload :clone, 0
    

    def toArray()
        return ABVector.superclass.java_super_method(:toArray, 0).bind(self).call()
    end
    java_overload :toArray, 0
    

    def set(index, element)
        return ABVector.superclass.java_super_method(:set, 2).bind(self).call(index, element)
    end
    java_overload :set, 2
    

    def add_j1(element)
        return ABVector.superclass.java_super_method(:add, 1).bind(self).call(element)
    end
    

    def remove_j1_1(obj)
        return ABVector.superclass.java_super_method(:remove, 1).bind(self).call(obj)
    end
    

    def add_j2(index, element)
        ABVector.superclass.java_super_method(:add, 2).bind(self).call(index, element)
    end

    def add(*java_overload_args)
        return add_j1(*java_overload_args) if java_overload_args.length == 1
        return add_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method add takes #{java_overload_args.length} arguments"
    end
    

    def remove_j1_2(index)
        return ABVector.superclass.java_super_method(:remove, 1).bind(self).call(index)
    end

    def remove(*java_overload_args)
        return remove_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method remove takes #{java_overload_args.length} arguments"
    end

    def remove_j1(*java_overload_args)
        return remove_j1_2(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer)
        return remove_j1_1(*java_overload_args)
    end
    

    def clear()
        ABVector.superclass.java_super_method(:clear, 0).bind(self).call()
    end
    java_overload :clear, 0
    

    def equals(obj)
        return ABVector.superclass.java_super_method(:equals, 1).bind(self).call(obj)
    end
    java_overload :equals, 1
    alias_method :==, :equals
    

    def hashCode()
        return super.hash
    end
    java_overload :hashCode, 0
    alias_method :hash, :hashCode
    

    def toString()
        return super.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def removeRange(fromIndex, toIndex)
        ABVector.superclass.java_super_method(:removeRange, 2).bind(self).call(fromIndex, toIndex)
    end
    java_overload :removeRange, 2
end

end; end; end

