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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/layer/NamedInterface"

module ::Org; module Allbinary; module Game; module Input

module GameInputInterface
    include ::Org::Allbinary::Layer::NamedInterface
    

    # throws Exception
    def processInput(layerManager)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :processInput, 1
    

    def initInputProcessors()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :initInputProcessors, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end

