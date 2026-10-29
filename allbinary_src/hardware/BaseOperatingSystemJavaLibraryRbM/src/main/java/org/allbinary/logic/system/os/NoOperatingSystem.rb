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
# package org.allbinary.logic.system.os

require "org/allbinary/logic/system/os/GenericOperatingSystem"

class NoOperatingSystem < GenericOperatingSystem
    

    def initialize()
        super()
    end
end

class NoOperatingSystem
    NO_OPERATING_SYSTEM = GenericOperatingSystem.new()
end

