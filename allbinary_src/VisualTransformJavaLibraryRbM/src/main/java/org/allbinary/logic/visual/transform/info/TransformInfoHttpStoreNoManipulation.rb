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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore"

class TransformInfoHttpStoreNoManipulation < TransformInfoHttpStore
    

    def initialize(propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
    end
    

    # throws Exception
    def setObjectConfigFile(value)
        self.setObjectConfigFileName(value)
        self.setObjectConfigInterface(TransformInfoObjectConfigNoManipulationFactory.getInstance().getInstance(self, self.getObjectConfigFilePath()))
    end
    

    # throws Exception
    def setObjectConfig(value)
        raise StandardError.new("Should not set from config")
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigNoManipulationFactory"

