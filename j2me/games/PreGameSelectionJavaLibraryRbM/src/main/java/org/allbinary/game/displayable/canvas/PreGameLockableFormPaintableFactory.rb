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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/ItemPaintableFactory"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PreGameLockableFormPaintableFactory < ::Org::Allbinary::Graphics::Form::ItemPaintableFactory
    attr_accessor :lockedIndex

    def jfields_org_allbinary_game_displayable_canvas_PreGameLockableFormPaintableFactory
        @lockedIndex = nil unless instance_variable_defined?(:@lockedIndex)
    end
    

    def initialize(lockedIndex)
        super()
        jfields_org_allbinary_game_displayable_canvas_PreGameLockableFormPaintableFactory
        @lockedIndex = lockedIndex
    end
    

    # throws Exception
    def getInstanceItemPaintable(paintableForm)
        return PreGameLockablePaintable.new(paintableForm, @lockedIndex)
    end
    java_overload :getInstanceItemPaintable, 1
end

module ::Org; module Allbinary; module Graphics; module Form; autoload :ItemPaintable, "org/allbinary/graphics/form/ItemPaintable" unless const_defined?(:ItemPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :PaintableForm, "org/allbinary/graphics/form/PaintableForm" unless const_defined?(:PaintableForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollCurrentSelectionForm, "org/allbinary/graphics/form/ScrollCurrentSelectionForm" unless const_defined?(:ScrollCurrentSelectionForm, false); end; end; end; end
autoload :PreGameLockablePaintable, "org/allbinary/game/displayable/canvas/PreGameLockablePaintable" unless const_defined?(:PreGameLockablePaintable, false)

end; end; end; end; end

