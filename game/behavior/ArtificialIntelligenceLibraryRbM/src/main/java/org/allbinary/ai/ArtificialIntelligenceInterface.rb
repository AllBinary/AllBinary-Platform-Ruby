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
# package org.allbinary.ai

require "java/lang/JavaOverload"
require "org/allbinary/graphics/IdentifierInterface"

module ::Org; module Allbinary; module Ai

module ArtificialIntelligenceInterface
    include ::Org::Allbinary::Graphics::IdentifierInterface
    

    # throws Exception
    def processAI(layerManager)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :processAI, 1
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end

