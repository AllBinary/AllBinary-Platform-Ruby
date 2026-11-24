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
# package org.allbinary.gui.dialog

require "java/lang/JavaOverload"
require "org/allbinary/gui/dialog/CloseJDialogListenerInterface"

module ::Org; module Allbinary; module Gui; module Dialog

class ExitCloseListener
    include CloseJDialogListenerInterface
    

    def initialize()
    end
    

    def onClose()
        exit(-1)
    end
    java_overload :onClose, 0
end

require "java/lang/System"

end; end; end; end

