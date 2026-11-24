# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.osgi.framework

require "java/lang/JavaOverload"
require "org/osgi/framework/ServiceReference"

module ::Org; module Osgi; module Framework

class BaseServiceReference
    include ServiceReference
    

    def getProperty(key)
        raise RuntimeError.new()
    end
    java_overload :getProperty, 1
    

    def getPropertyKeys()
        raise RuntimeError.new()
    end
    java_overload :getPropertyKeys, 0
    

    def compareTo(o)
        raise RuntimeError.new()
    end
    java_overload :compareTo, 1
end

end; end; end

