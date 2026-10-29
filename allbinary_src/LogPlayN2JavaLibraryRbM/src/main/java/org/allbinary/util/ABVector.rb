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

require "java/util/Vector"
# require "jsinterop/annotations/JsType"

class ABVector < Vector
    

    def ensureCapacity(minCapacity)
        super(minCapacity)
    end
    

    def capacity()
        return super()
    end
    

    def size()
        return super()
    end
    

    def isEmpty()
        return super()
    end
    

    def contains(obj)
        return super(obj)
    end
    

    def indexOf(obj)
        return super(obj)
    end
    

    def lastIndexOf(obj)
        return super(obj)
    end
    

    def elementAt(index)
        return super(index)
    end
    

    def firstElement()
        return super()
    end
    

    def lastElement()
        return super()
    end
    

    def setElementAt(obj, index)
        super(obj, index)
    end
    

    def removeElementAt(index)
        super(index)
    end
    

    def addElement(obj)
        super(obj)
    end
    

    def insertElementAt(obj, index)
        super(obj, index)
    end
    

    def removeElement(obj)
        return super(obj)
    end
    

    def removeAllElements()
        super()
    end
    

    def clone()
        return super()
    end
    

    def toArray()
        return super()
    end
    

    def set(index, element)
        return super(index, element)
    end
    

    def add(element)
        return super(element)
    end
    

    def remove(obj)
        return super(obj)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def add(index, element)
        super(index, element)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def remove(index)
        return super(index)
    end
    

    def clear()
        super()
    end
    

    def equals(obj)
        return super(obj)
    end
    alias_method :==, :equals
    

    def hashCode()
        return super.hash
    end
    alias_method :hash, :hashCode
    

    def toString()
        return super.to_s
    end
    alias_method :to_s, :toString
    

    def removeRange(fromIndex, toIndex)
        super(fromIndex, toIndex)
    end
end

