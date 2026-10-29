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

require "org/allbinary/ai/ArtificialIntelligenceInterface"

class ArtificialIntelligence
    include ArtificialIntelligenceInterface
    

    def self.getInstance()
        return ArtificialIntelligence.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def processAI(layerManager)
    end
    

    def getId()
        return 1
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/layer/AllBinaryLayerManager"

class ArtificialIntelligence
    AI_ID = 2
    @@instance = ArtificialIntelligence.new()
end

