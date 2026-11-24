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
require "java/util/Hashtable"

module ::Org; module Allbinary; module Util

class ABHashtable < ::Java::Util::Hashtable

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_util_ABHashtable_1(*args)
        when 0 then jnew_org_allbinary_util_ABHashtable_0(*args)
        else raise ArgumentError, "No constructor of ABHashtable takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_util_ABHashtable_1(initialCapacity)
        ABHashtable.superclass.instance_method(:initialize).bind(self).call(initialCapacity)
    end
    

    def jnew_org_allbinary_util_ABHashtable_0()
        ABHashtable.superclass.instance_method(:initialize).bind(self).call()
    end
end

end; end; end

