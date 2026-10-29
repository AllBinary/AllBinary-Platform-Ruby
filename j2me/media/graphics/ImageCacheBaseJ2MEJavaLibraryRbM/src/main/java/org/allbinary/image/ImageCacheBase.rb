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
# package org.allbinary.image

# require "java/io/InputStream"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"

class ImageCacheBase
    attr_accessor :logUtil, :imageFactory, :hashtable, :SIZE, :widths, :heights, :listOfList, :availableListOfList, :volume, :nextIndex

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageFactory = ImageFactory.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
        @SIZE = 128
        @widths = Array.new(@SIZE, 0)
        @heights = Array.new(@SIZE, 0)
        @listOfList = Array.new(@SIZE, nil)
        @availableListOfList = Array.new(@SIZE, nil)
        @volume = 0
        @nextIndex = 0
    end
    

    def initialize()
        initialize_fields
        (@listOfList.length - 1).step(0, -(1)) do |index|
            @listOfList[index] = BasicArrayListD.new()
        end
        (@availableListOfList.length - 1).step(0, -(1)) do |index|
            @availableListOfList[index] = BasicArrayListD.new()
        end
    end
    

    def getImage(resourceId)
        imageCanBeNull = @hashtable.get(resourceId)
        if imageCanBeNull == nil
            return NullImage::NULL_IMAGE
        end
        return imageCanBeNull
    end
    

    def releaseAll()
        (@listOfList.length - 1).step(0, -(1)) do |index|
            @availableListOfList[index].clear()
            @availableListOfList[index].addAllList(@listOfList[index])
        end
        @logUtil.putF(StringMaker.new().append("ImageCache: ").append(self.to_s).to_s, self, "releaseAll")
    end
    

    def getIndexWH(width, height)
        foundIndex = -1
        size = @widths.length
        (0...size).each do |index|
            if @widths[index] == width && @heights[index] == height
                foundIndex = index
                return foundIndex
            end
        end
        return foundIndex
    end
    

    def getFromAvailable(foundIndex, width, height)
        if foundIndex != -1
            if @availableListOfList[foundIndex].size() > 0
                list = @availableListOfList[foundIndex]
                return list.removeAt(list.size() - 1)
            end
        end
        return NullImage::NULL_IMAGE
    end
    

    # throws Exception
    def get(caller, width, height)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getWithKey(key)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def createImage(caller, width, height)
        return @imageFactory.createImage(caller, width, height)
    end
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        return @imageFactory.createImageFromInputStream(key, inputStream)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        (@nextIndex - 1).step(0, -(1)) do |index|
            width = @widths[index]
            height = @heights[index]
            total = @listOfList[index].size()
            totalAvailable = @availableListOfList[index].size()
            stringBuffer.append(" w: ")
            stringBuffer.appendint(width)
            stringBuffer.append(" h: ")
            stringBuffer.appendint(height)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
            stringBuffer.appendint(total)
            stringBuffer.append(" available: ")
            stringBuffer.appendint(totalAvailable)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getHashtableP()
        return @hashtable
    end
    

    def init(image)
    end
    

    def initProgress()
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/image/ImageFactory"

