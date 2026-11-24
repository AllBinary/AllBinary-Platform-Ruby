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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator

class TransformInfoObjectConfigGenerator
    include TransformInfoObjectConfigGeneratorInterface
    attr_accessor :commonStrings

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_TransformInfoObjectConfigGenerator
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_TransformInfoObjectConfigGenerator
    end
    

    # throws Exception
    def process(input)
        raise RuntimeError.new()
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end; end; end

