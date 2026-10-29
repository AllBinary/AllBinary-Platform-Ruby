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


module OperatingSystemInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def getVersion()
        raise NotImplementedError
    end
    

    def getArch()
        raise NotImplementedError
    end
    

    def getCharacterSet()
        raise NotImplementedError
    end
    

    def isOverScan()
        raise NotImplementedError
    end
    

    def getOverScanXPercent()
        raise NotImplementedError
    end
    

    def getOverScanYPercent()
        raise NotImplementedError
    end
    

    def isScalable()
        raise NotImplementedError
    end
    

    def isAutoHide()
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/java/character/CharacterSet"

