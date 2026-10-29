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


class CenterStaticViewPositionFactory
    

    def initialize()
    end
    

    def getInstance(z)
        displayInfoSingleton = DisplayInfoSingleton.getInstance()
        return StaticViewPosition.new((displayInfoSingleton.getLastWidth() >> 1), (displayInfoSingleton.getLastHeight() >> 1), z)
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/view/StaticViewPosition"
require "org/allbinary/view/ViewPositionBase"

