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
# package org.allbinary.logic.visual.transform.info.objectConfig


module TransformInfoObjectConfigAndManipulatorFactoryInterface
    

    # throws Exception
    def getInstance(abeClientInformation, transformInfoInterface, objectConfigFileAbPath)
        raise NotImplementedError
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface, document)
        raise NotImplementedError
    end
end

autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

