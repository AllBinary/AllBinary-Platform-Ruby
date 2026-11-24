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
# package org.allbinary.logic.system.hardware.components


module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components

class Component
    attr_accessor :name

    def jfields_org_allbinary_logic_system_hardware_components_Component
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(componentName)
        jfields_org_allbinary_logic_system_hardware_components_Component
        @name = componentName
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

end; end; end; end; end; end

