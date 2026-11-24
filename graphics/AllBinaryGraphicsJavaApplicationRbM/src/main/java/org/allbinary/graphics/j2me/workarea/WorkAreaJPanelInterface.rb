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

require "java/lang/JavaOverload"
# require "java/awt/event/KeyListener"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea

module WorkAreaJPanelInterface
    include KeyListener
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getName, 0
    

    def deselect()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :deselect, 0
    

    def select()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :select, 0
    

    def changeZoom(factor)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :changeZoom, 1
    

    def explodeAll()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :explodeAll, 0
    

    # throws Exception
    def autoRotate(increments, totalAngle)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :autoRotate, 2
    

    # throws Exception
    def autoExplode(numberOfFrames, explodeType)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :autoExplode, 2
    

    # throws Exception
    def autoMirror()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :autoMirror, 0
    

    def play()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :play, 0
    

    def stop()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :stop, 0
    

    def isPlaying()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isPlaying, 0
    

    # throws Exception
    def toDocument()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :toDocument, 0
end

module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

end; end; end; end; end

