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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryInterface"

class TransformInfoObjectConfigAndManipulatorFactoryBase
    include TransformInfoObjectConfigAndManipulatorFactoryInterface
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def getInstance(abeClientInformation, transformInfoInterface, objectConfigFileAbPath)
        raise RuntimeError.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface)
        raise RuntimeError.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface, document)
        raise RuntimeError.new()
    end
end

autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

