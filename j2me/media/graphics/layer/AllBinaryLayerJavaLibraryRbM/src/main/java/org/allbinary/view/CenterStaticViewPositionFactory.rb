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


module ::Org; module Allbinary; module View

class CenterStaticViewPositionFactory
    

    def initialize()
    end
    

    def getInstance(z)
        displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        return StaticViewPosition.new((displayInfoSingleton.getLastWidth() >> 1), (displayInfoSingleton.getLastHeight() >> 1), z)
    end
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
autoload :StaticViewPosition, "org/allbinary/view/StaticViewPosition" unless const_defined?(:StaticViewPosition, false)
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false)

end; end; end

