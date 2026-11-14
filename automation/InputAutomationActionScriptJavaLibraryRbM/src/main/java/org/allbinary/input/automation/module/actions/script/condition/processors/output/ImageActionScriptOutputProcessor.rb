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


class ImageActionScriptOutputProcessor
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def self.process(imageActionScriptOutputInterface, frame)
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        logUtil.putF("Start - Processing at: " + imageActionScriptOutputInterface.to_s, "ImageActionScriptOutputProcessor", commonStrings.PROCESS)
        imageTypes = imageActionScriptOutputInterface.getImageTypes()
        vector = imageTypes.getVector()
        size = vector.size()
        (0...size).each do |index|
            imageType = vector.get(index)
            imageIOInterface = InputImageIOInterfaceFactory.getInstance(imageType)
            imageIOInterface.save(frame)
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :InputImageIOInterfaceFactory, "org/allbinary/input/media/image/InputImageIOInterfaceFactory"
autoload :InputImageType, "org/allbinary/input/media/image/InputImageType"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :ImageIOInterface, "org/allbinary/media/image/io/ImageIOInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ImageActionScriptOutputInterface, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface"
autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes"

