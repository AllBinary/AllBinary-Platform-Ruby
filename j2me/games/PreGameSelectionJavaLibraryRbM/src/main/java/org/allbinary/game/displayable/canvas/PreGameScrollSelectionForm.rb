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
require "org/allbinary/graphics/form/ScrollCurrentSelectionForm"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PreGameScrollSelectionForm < ::Org::Allbinary::Graphics::Form::ScrollCurrentSelectionForm
    

    def initialize(title, items, formPaintableFactory, backgroundBasicColor, foregroundBasicColor)
        super(title, items, formPaintableFactory, 0, 3, false, backgroundBasicColor, foregroundBasicColor)
    end
    

    # throws Exception
    def init(rectangle)
        PreGameScrollSelectionForm.superclass.java_super_method(:init, 2).bind(self).call(rectangle, ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().TEMP_HORIZONTAL_FORM)
    end
    java_overload :init, 1
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory" unless const_defined?(:ItemPaintableFactory, false); end; end; end; end

end; end; end; end; end

