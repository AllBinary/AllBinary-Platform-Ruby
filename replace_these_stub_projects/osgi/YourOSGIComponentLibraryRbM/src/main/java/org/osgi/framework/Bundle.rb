# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.osgi.framework


module ::Org; module Osgi; module Framework

module Bundle
    

    def getSymbolicName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws BundleException
    def start_j0()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws BundleException
    def start_j1(options)
        return super if defined?(super)
        raise NotImplementedError
    end

    def start(*java_overload_args)
        return start_j0(*java_overload_args) if java_overload_args.length == 0
        return start_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method start takes #{java_overload_args.length} arguments"
    end
end

autoload :BundleException, "org/osgi/framework/BundleException" unless const_defined?(:BundleException, false)

end; end; end

