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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

class TransformInfoObjectConfigAndManipulatorFactoryBase
    include TransformInfoObjectConfigAndManipulatorFactoryInterface
    attr_accessor :commonStrings

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfigAndManipulatorFactoryBase
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfigAndManipulatorFactoryBase
    end
    

    # throws Exception
    def getInstance_j3_1(abeClientInformation, transformInfoInterface, objectConfigFileAbPath)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getInstance_j2(abeClientInformation, transformInfoInterface)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getInstance_j3_2(abeClientInformation, transformInfoInterface, document)
        raise RuntimeError.new()
    end

    def getInstance(*java_overload_args)
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j3(*java_overload_args)
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return getInstance_j3_2(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false)

end; end; end; end; end; end; end

