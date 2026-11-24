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
# package org.allbinary.input.motion.button


module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonsPaintableCompositeFactory
    

    def self.getInstance(inputMappingInterface, basicColor)
        return TouchButtonsPaintableComposite.new(inputMappingInterface, basicColor)
    end
end

module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputMappingInterface, "org/allbinary/game/input/mapping/InputMappingInterface" unless const_defined?(:InputMappingInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :ProcessPaintable, "org/allbinary/graphics/paint/ProcessPaintable" unless const_defined?(:ProcessPaintable, false); end; end; end; end
autoload :TouchButtonsPaintableComposite, "org/allbinary/input/motion/button/TouchButtonsPaintableComposite" unless const_defined?(:TouchButtonsPaintableComposite, false)

end; end; end; end; end

