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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/lang/reflect/Method"
# require "java/lang/reflect/Proxy"
require "java/lang/reflect/InvocationHandler"

module ::Org; module Allbinary; module Logic; module Java; module Proxy

class InterfaceCastProxy
    include ::Java::Lang::Reflect::InvocationHandler
    attr_accessor :anyType

    def jfields_org_allbinary_logic_java_proxy_InterfaceCastProxy
        @anyType = nil unless instance_variable_defined?(:@anyType)
    end
    

    def initialize(anyType)
        jfields_org_allbinary_logic_java_proxy_InterfaceCastProxy
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
    java_overload :invoke, 3
end

end; end; end; end; end

