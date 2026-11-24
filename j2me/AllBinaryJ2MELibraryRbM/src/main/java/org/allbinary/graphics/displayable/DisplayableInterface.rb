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
# package org.allbinary.graphics.displayable


module ::Org; module Allbinary; module Graphics; module Displayable

module DisplayableInterface
    

    def addCommand(cmd)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeCommand(cmd)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setCommandListener(l)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end

end; end; end; end

