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
# package org.allbinary.graphics.paint

require "org/allbinary/graphics/displayable/StateControlledInterface"
require "org/allbinary/graphics/paint/Paintable"

class StatePaintable < Paintable
    include StateControlledInterface
    

    def initialize()
        super()
    end
    

    def setState(state)
    end
end

