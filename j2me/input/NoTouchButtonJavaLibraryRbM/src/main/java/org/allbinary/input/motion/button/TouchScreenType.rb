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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchScreenType
    attr_accessor :name

    def jfields_org_allbinary_input_motion_button_TouchScreenType
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_input_motion_button_TouchScreenType
        @name = name
    end
    

    def getName()
        return @name
    end
    

    def toString()
        return self.getName()
    end
    alias_method :to_s, :toString
end

end; end; end; end; end

