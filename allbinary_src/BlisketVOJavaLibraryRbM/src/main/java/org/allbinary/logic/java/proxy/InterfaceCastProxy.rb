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
# package org.allbinary.logic.java.proxy

# require "java/lang/reflect/Method"
# require "java/lang/reflect/Proxy"

class InterfaceCastProxy
    include InvocationHandler
    attr_accessor :anyType

    def initialize_fields
        @anyType = nil
    end
    

    def initialize(anyType)
        initialize_fields
        @anyType = anyType
    end
    

    def self.newInstance(anyType)
        return Proxy.newProxyInstance(anyType.class.getClassLoader(), anyType.class.getInterfaces(), InterfaceCastProxy.new(anyType))
    end
    

    # throws Throwable
    def invoke(proxyObject, proxyMethod, proxyArgs)
        methodName = proxyMethod.getName()
        realMethod = @anyType.class.getMethod(methodName, proxyMethod.getParameterTypes())
        if !realMethod.isAccessible()
            realMethod.setAccessible(true)
        end
        return proxyMethod.invoke(@anyType, proxyArgs)
    end
end

