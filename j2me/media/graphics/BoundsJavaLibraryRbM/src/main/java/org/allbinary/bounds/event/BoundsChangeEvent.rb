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
# package org.allbinary.bounds.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class BoundsChangeEvent < AllBinaryEventObject
    

    def initialize(rectangle)
        super(rectangle)
    end
    

    def getRectangle()
        return self.getSource()
    end
end

require "org/allbinary/graphics/Rectangle"

