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
# package org.allbinary.logic.system.os.windows

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/os/GenericOperatingSystem"

module ::Org; module Allbinary; module Logic; module System; module Os; module Windows

class WindowsOS < ::Org::Allbinary::Logic::System::Os::GenericOperatingSystem
    

    def initialize()
        super()
        @scalable = true
    end
    

    def isAutoHide()
        return true
    end
    java_overload :isAutoHide, 0
end

end; end; end; end; end; end

