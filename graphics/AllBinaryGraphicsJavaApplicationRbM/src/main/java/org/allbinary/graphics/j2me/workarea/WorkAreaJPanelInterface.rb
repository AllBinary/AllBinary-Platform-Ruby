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
# package org.allbinary.graphics.j2me.workarea


module WorkAreaJPanelInterface
    include KeyListener
    

    def getName()
        raise NotImplementedError
    end
    

    def deselect()
        raise NotImplementedError
    end
    

    def select()
        raise NotImplementedError
    end
    

    def changeZoom(factor)
        raise NotImplementedError
    end
    

    def explodeAll()
        raise NotImplementedError
    end
    

    # throws Exception
    def autoRotate(increments, totalAngle)
        raise NotImplementedError
    end
    

    # throws Exception
    def autoExplode(numberOfFrames, explodeType)
        raise NotImplementedError
    end
    

    # throws Exception
    def autoMirror()
        raise NotImplementedError
    end
    

    def play()
        raise NotImplementedError
    end
    

    def stop()
        raise NotImplementedError
    end
    

    def isPlaying()
        raise NotImplementedError
    end
    

    # throws Exception
    def toDocument()
        raise NotImplementedError
    end
end

require "org/w3c/dom/Document"

