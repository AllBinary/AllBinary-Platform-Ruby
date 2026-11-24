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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/ItemPaintableFactory"

module ::Org; module Allbinary; module Graphics; module Form

class LockableFormPaintableFactory < ItemPaintableFactory
    attr_accessor :lockedIndex

    def jfields_org_allbinary_graphics_form_LockableFormPaintableFactory
        @lockedIndex = nil unless instance_variable_defined?(:@lockedIndex)
    end
    

    def initialize(lockedIndex)
        super()
        jfields_org_allbinary_graphics_form_LockableFormPaintableFactory
        @lockedIndex = lockedIndex
    end
    

    # throws Exception
    def getInstanceItemPaintable(paintableForm)
        return LockablePaintable.new(@lockedIndex)
    end
    java_overload :getInstanceItemPaintable, 1
end

autoload :ItemPaintable, "org/allbinary/graphics/form/ItemPaintable" unless const_defined?(:ItemPaintable, false)
autoload :LockablePaintable, "org/allbinary/graphics/form/LockablePaintable" unless const_defined?(:LockablePaintable, false)
autoload :PaintableForm, "org/allbinary/graphics/form/PaintableForm" unless const_defined?(:PaintableForm, false)

end; end; end; end

