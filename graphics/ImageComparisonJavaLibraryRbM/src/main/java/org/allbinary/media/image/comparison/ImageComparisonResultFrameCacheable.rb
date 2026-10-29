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

require "org/allbinary/logic/util/cache/CacheableInterface"

class ImageComparisonResultFrameCacheable
    include CacheableInterface
    attr_accessor :frame, :imageComparisonResult

    def initialize_fields
        @frame = nil
        @imageComparisonResult = nil
    end
    

    def initialize(imageComparisonResult, frame)
        initialize_fields
        self.setImageComparisonResult(imageComparisonResult)
        @frame = frame
    end
    

    def getKey()
        return @frame
    end
    

    def getFrame()
        return @frame
    end
    

    def setFrame(frame)
        @frame = frame
    end
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(" Frame: ")
        stringBuffer.appendlong(self.getFrame())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/comparison/ImageComparisonResult"

