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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getVersion()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getArch()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCharacterSet()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isOverScan()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOverScanXPercent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOverScanYPercent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isScalable()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isAutoHide()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toString()
        return super if defined?(super)
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

autoload :CharacterSet, "org/allbinary/logic/java/character/CharacterSet"

