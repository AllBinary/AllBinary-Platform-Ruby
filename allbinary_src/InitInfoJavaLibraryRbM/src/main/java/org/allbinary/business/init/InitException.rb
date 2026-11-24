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
# package org.allbinary.business.init

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Business; module Init

class InitException < StandardError

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_init_InitException_0(*args)
        when 1 then jnew_org_allbinary_business_init_InitException_1(*args)
        else raise ArgumentError, "No constructor of InitException takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_init_InitException_0()
        InitException.superclass.instance_method(:initialize).bind(self).call()
    end
    

    def jnew_org_allbinary_business_init_InitException_1(msg)
        InitException.superclass.instance_method(:initialize).bind(self).call(msg)
    end
end

end; end; end; end

