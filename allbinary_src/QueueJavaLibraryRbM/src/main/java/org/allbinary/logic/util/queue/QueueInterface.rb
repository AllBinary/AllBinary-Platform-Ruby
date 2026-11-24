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
# package org.allbinary.logic.util.queue


module ::Org; module Allbinary; module Logic; module Util; module QueuePackage

module QueueInterface
    

    # throws Exception
    def offer(anyType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def remove_j1(anyType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def remove_j0()
        return super if defined?(super)
        raise NotImplementedError
    end

    def remove(*java_overload_args)
        return remove_j1(*java_overload_args) if java_overload_args.length == 1
        return remove_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method remove takes #{java_overload_args.length} arguments"
    end
end

end; end; end; end; end

