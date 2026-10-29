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
# package org.allbinary.logic.system.hardware.components.linux

require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface"

class PCI
    include HardwareComponentInterface
    include VideoInterface
    attr_accessor :data

    def initialize_fields
        @data = nil
    end
    

    def initialize(data)
        initialize_fields
        @data = data
    end
    

    def compareTo(componentInterface)
        return true
    end
    

    def toString()
        return @data
    end
    alias_method :to_s, :toString
end

