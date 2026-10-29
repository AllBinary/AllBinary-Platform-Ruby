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
require "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface"

class MachineAccessControlAddress
    include HardwareComponentInterface
    include MachineAccessControlAddressInterface
    

    def initialize()
    end
    

    def compareTo(componentInterface)
        return true
    end
    

    def toString()
        return StringUtil.getInstance().EMPTY_STRING
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringUtil"

