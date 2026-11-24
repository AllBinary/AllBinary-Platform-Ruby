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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class ImageActionScriptOutputProcessor
    attr_accessor :logUtil

    def jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutputProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutputProcessor
    end
    

    # throws Exception
    def self.process(imageActionScriptOutputInterface, frame)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF("Start - Processing at: " + imageActionScriptOutputInterface.to_s, "ImageActionScriptOutputProcessor", commonStrings.PROCESS)
        imageTypes = imageActionScriptOutputInterface.getImageTypes()
        vector = imageTypes.getVector()
        size = vector.size()
        (0...size).each do |index|
            imageType = vector.get(index)
            imageIOInterface = ::Org::Allbinary::Input::Media::Image::InputImageIOInterfaceFactory.getInstance(imageType)
            imageIOInterface.save(frame)
        end
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; autoload :InputImageIOInterfaceFactory, "org/allbinary/input/media/image/InputImageIOInterfaceFactory" unless const_defined?(:InputImageIOInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; autoload :InputImageType, "org/allbinary/input/media/image/InputImageType" unless const_defined?(:InputImageType, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Io; autoload :ImageIOInterface, "org/allbinary/media/image/io/ImageIOInterface" unless const_defined?(:ImageIOInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageActionScriptOutputInterface, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface" unless const_defined?(:ImageActionScriptOutputInterface, false)
autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes" unless const_defined?(:ImageTypes, false)

end; end; end; end; end; end; end; end; end; end

