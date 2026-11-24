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
# package org.allbinary.game.layer


module ::Org; module Allbinary; module Game; module Layer

module DriverCompositeInterface
    

    def getDriver()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Driver, "org/allbinary/game/layer/Driver" unless const_defined?(:Driver, false)

end; end; end; end

