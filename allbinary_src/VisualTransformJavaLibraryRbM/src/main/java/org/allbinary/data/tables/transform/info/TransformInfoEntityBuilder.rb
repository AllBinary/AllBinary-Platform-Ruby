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
# package org.allbinary.data.tables.transform.info


class TransformInfoEntityBuilder
    

    def self.getInstance()
        return TransformInfoEntityFactory.getInstance(TransformInfoObjectConfigGeneratorFactory.getInstance(), TransformInfoObjectConfigAndManipulatorFactory.getInstance(), TransformInfoHttpStoreFactory.getInstance())
    end
end

autoload :TransformInfoHttpStoreFactory, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreFactory"
autoload :TransformInfoObjectConfigAndManipulatorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory"
autoload :TransformInfoObjectConfigGeneratorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory"
autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity"
autoload :TransformInfoEntityFactory, "org/allbinary/data/tables/transform/info/TransformInfoEntityFactory"

