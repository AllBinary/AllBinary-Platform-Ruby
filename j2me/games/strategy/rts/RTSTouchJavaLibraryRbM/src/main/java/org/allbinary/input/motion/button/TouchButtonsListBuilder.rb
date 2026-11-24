# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/button/BaseTouchInput"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonsListBuilder < BaseTouchInput
    attr_accessor :baseTouchInputList

    def jfields_org_allbinary_input_motion_button_TouchButtonsListBuilder
        @baseTouchInputList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_TouchButtonsListBuilder
    end
    

    def addList(list)
        size = @baseTouchInputList.size()
        baseTouchInput = nil
        (0...size).each do |index|
            baseTouchInput = @baseTouchInputList.get(index)
            list.addAllList(baseTouchInput.getList())
        end
    end
    java_overload :addList, 1
    

    def add(baseTouchInput)
        @baseTouchInputList.add(baseTouchInput)
    end
    java_overload :add, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end

