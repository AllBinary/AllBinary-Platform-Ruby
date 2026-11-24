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
require "java/util/Stack"
# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Util

class ABStack < ::Java::Util::Stack
    

    def push(item)
        return ABStack.superclass.java_super_method(:push, 1).bind(self).call(item)
    end
    java_overload :push, 1
    

    def pop()
        return ABStack.superclass.java_super_method(:pop, 0).bind(self).call()
    end
    java_overload :pop, 0
    

    def peek()
        return ABStack.superclass.java_super_method(:peek, 0).bind(self).call()
    end
    java_overload :peek, 0
    

    def empty()
        return ABStack.superclass.java_super_method(:empty, 0).bind(self).call()
    end
    java_overload :empty, 0
    

    def search(obj)
        return ABStack.superclass.java_super_method(:search, 1).bind(self).call(obj)
    end
    java_overload :search, 1
    

    def removeElement(obj)
        return ABStack.superclass.java_super_method(:removeElement, 1).bind(self).call(obj)
    end
    java_overload :removeElement, 1
end

end; end; end

