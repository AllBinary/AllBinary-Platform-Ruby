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
# package org.allbinary.logic.math.permutations

require "java/lang/Object"
require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Logic; module MathPackage; module Permutations

class ComparableObject
    include Comparable
    

    def compareTo(anyType)
        if ::Org::Allbinary::TsUtil.getInstance().hashCode(self) < ::Org::Allbinary::TsUtil.getInstance().hashCode(anyType)
            return -1
        elsif ::Org::Allbinary::TsUtil.getInstance().hashCode(self) > ::Org::Allbinary::TsUtil.getInstance().hashCode(anyType)
            return 1
        end
        return 0
    end
    java_overload :compareTo, 1
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end

end; end; end; end; end

