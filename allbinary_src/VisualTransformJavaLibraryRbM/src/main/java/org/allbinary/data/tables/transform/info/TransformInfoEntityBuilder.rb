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


module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info

class TransformInfoEntityBuilder
    

    def self.getInstance()
        return TransformInfoEntityFactory.getInstance(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::Generator::TransformInfoObjectConfigGeneratorFactory.getInstance(), ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigAndManipulatorFactory.getInstance(), ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpStoreFactory.getInstance())
    end
end

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpStoreFactory, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreFactory" unless const_defined?(:TransformInfoHttpStoreFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigAndManipulatorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory" unless const_defined?(:TransformInfoObjectConfigAndManipulatorFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator; autoload :TransformInfoObjectConfigGeneratorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory" unless const_defined?(:TransformInfoObjectConfigGeneratorFactory, false); end; end; end; end; end; end; end; end
autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity" unless const_defined?(:TransformInfoEntity, false)
autoload :TransformInfoEntityFactory, "org/allbinary/data/tables/transform/info/TransformInfoEntityFactory" unless const_defined?(:TransformInfoEntityFactory, false)

end; end; end; end; end; end

