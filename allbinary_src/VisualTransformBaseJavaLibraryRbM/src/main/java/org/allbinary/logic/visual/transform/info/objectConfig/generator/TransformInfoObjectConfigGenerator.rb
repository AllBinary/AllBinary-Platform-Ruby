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
# package org.allbinary.logic.visual.transform.info.objectConfig.generator

require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorInterface"

class TransformInfoObjectConfigGenerator
    include TransformInfoObjectConfigGeneratorInterface
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def process(input)
        raise RuntimeError.new()
    end
end

require "org/allbinary/string/CommonStrings"

