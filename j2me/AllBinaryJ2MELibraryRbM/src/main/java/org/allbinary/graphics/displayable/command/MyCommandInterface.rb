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
# package org.allbinary.graphics.displayable.command


module ::Org; module Allbinary; module Graphics; module Displayable; module Command

module MyCommandInterface
    

    def addCommand(command)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeAllCommands()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end

end; end; end; end; end

