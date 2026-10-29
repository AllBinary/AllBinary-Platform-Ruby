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
# package org.allbinary.graphics.form

require "org/allbinary/graphics/form/ItemPaintableFactory"

class LockableFormPaintableFactory < ItemPaintableFactory
    attr_accessor :lockedIndex

    def initialize_fields
        @lockedIndex = nil
    end
    

    def initialize(lockedIndex)
        super()
        initialize_fields
        @lockedIndex = lockedIndex
    end
    

    # throws Exception
    def getInstanceItemPaintable(paintableForm)
        return LockablePaintable.new(@lockedIndex)
    end
end

require "org/allbinary/graphics/form/ItemPaintable"
require "org/allbinary/graphics/form/LockablePaintable"
require "org/allbinary/graphics/form/PaintableForm"

