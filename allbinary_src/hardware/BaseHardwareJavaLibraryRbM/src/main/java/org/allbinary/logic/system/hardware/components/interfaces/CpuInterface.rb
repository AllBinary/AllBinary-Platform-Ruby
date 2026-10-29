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
# package org.allbinary.logic.system.hardware.components.interfaces


module CpuInterface
    

    def getProcessor()
        raise NotImplementedError
    end
    

    def getVendorId()
        raise NotImplementedError
    end
    

    def getCpuFamily()
        raise NotImplementedError
    end
    

    def getModel()
        raise NotImplementedError
    end
    

    def getModelName()
        raise NotImplementedError
    end
    

    def getStepping()
        raise NotImplementedError
    end
    

    def getCpuSpeed()
        raise NotImplementedError
    end
    

    def getCacheSize()
        raise NotImplementedError
    end
    

    def compareTo(cpuInterface)
        raise NotImplementedError
    end
end

