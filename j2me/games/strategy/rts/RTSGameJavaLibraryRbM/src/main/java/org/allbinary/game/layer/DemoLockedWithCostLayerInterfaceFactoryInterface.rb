# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/CostLayerInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer

module DemoLockedWithCostLayerInterfaceFactoryInterface
    include CostLayerInterfaceFactoryInterface
    

    def isDemoLocked()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isDemoLocked, 0
end

end; end; end; end

