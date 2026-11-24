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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/PCGameInputMapping"

module ::Org; module Allbinary; module Game; module Input

class MotionLaptopGameInputMapping < PCGameInputMapping
    

    def getDefault()
        return MotionLaptopDefaultGameInputMapping.new().getInputMapping()
    end
    java_overload :getDefault, 0
end

module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
autoload :MotionLaptopDefaultGameInputMapping, "org/allbinary/game/input/MotionLaptopDefaultGameInputMapping" unless const_defined?(:MotionLaptopDefaultGameInputMapping, false)

end; end; end; end

