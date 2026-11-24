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
# package org.allbinary.debug


module ::Org; module Allbinary; module Debug

class DebugFactory
    

    def self.getInstance()
        return NoDebug.getInstance()
    end
end

autoload :DebugInterface, "org/allbinary/debug/DebugInterface" unless const_defined?(:DebugInterface, false)
autoload :NoDebug, "org/allbinary/debug/NoDebug" unless const_defined?(:NoDebug, false)

end; end; end

