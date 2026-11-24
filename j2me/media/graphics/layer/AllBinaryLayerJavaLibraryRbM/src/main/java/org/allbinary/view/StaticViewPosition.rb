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
# package org.allbinary.view

require "java/lang/JavaOverload"
require "org/allbinary/view/ViewPosition"

module ::Org; module Allbinary; module View

class StaticViewPosition < ViewPosition
    

    def initialize(x, y, z)
        super(x, y, z)
    end
    

    def getX()
        return self.getRawX()
    end
    java_overload :getX, 0
    

    def getY()
        return self.getRawY()
    end
    java_overload :getY, 0
    

    def getZ()
        return self.getRawZ()
    end
    java_overload :getZ, 0
end

end; end; end

