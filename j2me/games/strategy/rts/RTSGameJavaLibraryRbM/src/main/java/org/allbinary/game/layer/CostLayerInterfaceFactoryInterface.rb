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
require "org/allbinary/layer/LayerInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer

module CostLayerInterfaceFactoryInterface
    include ::Org::Allbinary::Layer::LayerInterfaceFactoryInterface
    

    # throws Exception
    def getCost()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCost, 0
end

end; end; end; end

