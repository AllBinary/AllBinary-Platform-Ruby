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
require "org/allbinary/graphics/displayable/DisplayableInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

module AllBinaryGameCanvasInterface
    include ::Org::Allbinary::Graphics::Displayable::DisplayableInterface
    

    def getLayerManager()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getLayerManager, 0
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end

end; end; end; end; end

