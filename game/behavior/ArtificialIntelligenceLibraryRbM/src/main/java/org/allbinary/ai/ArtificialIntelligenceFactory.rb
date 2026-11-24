# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
require "org/allbinary/ai/ArtificialIntelligenceFactoryInterface"

module ::Org; module Allbinary; module Ai

class ArtificialIntelligenceFactory
    include ArtificialIntelligenceFactoryInterface
    

    # throws Exception
    def getInstance(anyType)
        raise RuntimeError.new()
    end
    java_overload :getInstance, 1
end

autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence" unless const_defined?(:ArtificialIntelligence, false)

end; end; end

