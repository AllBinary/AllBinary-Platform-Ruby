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
# package org.allbinary.media.image.comparison

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class ImageComparisonResultsEvent < AllBinaryEventObject
    attr_accessor :imageComparisonResult

    def initialize_fields
        @imageComparisonResult = nil
    end
    

    def initialize(anyType, imageComparisonInfo)
        super(anyType)
        initialize_fields
        self.setImageComparisonResult(imageComparisonInfo)
    end
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
end

require "org/allbinary/media/image/comparison/ImageComparisonResult"

