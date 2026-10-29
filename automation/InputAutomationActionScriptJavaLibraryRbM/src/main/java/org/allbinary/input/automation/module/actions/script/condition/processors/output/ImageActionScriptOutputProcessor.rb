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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/media/image/InputImageIOInterfaceFactory"
require "org/allbinary/input/media/image/InputImageType"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/io/ImageIOInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes"

