# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.osgi.framework

require "java/lang/JavaOverload"

module ::Org; module Osgi; module Framework

module ServiceReference
    include Comparable
    

    def getProperty(key)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getProperty, 1
    

    def getPropertyKeys()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPropertyKeys, 0
end

end; end; end

