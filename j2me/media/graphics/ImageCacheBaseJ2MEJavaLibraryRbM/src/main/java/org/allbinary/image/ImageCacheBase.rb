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


module ::Org; module Allbinary; module Image

class ImageCacheBase
    attr_accessor :logUtil, :imageFactory, :hashtable, :SIZE, :widths, :heights, :listOfList, :availableListOfList, :volume, :nextIndex

    def jfields_org_allbinary_image_ImageCacheBase
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @imageFactory = ImageFactory.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @SIZE = 128
        @widths = (Array.new(@SIZE, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @heights = (Array.new(@SIZE, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @listOfList = Array.new(@SIZE, nil)
        @availableListOfList = Array.new(@SIZE, nil)
        @volume = 0
        @nextIndex = 0
    end
    

    def initialize()
        jfields_org_allbinary_image_ImageCacheBase
        (@listOfList.length - 1).step(0, -(1)) do |index|
            @listOfList[index] = ::Org::Allbinary::Util::BasicArrayListD.new()
        end
        (@availableListOfList.length - 1).step(0, -(1)) do |index|
            @availableListOfList[index] = ::Org::Allbinary::Util::BasicArrayListD.new()
        end
    end
    

    def getImage(resourceId)
        imageCanBeNull = @hashtable.get(resourceId)
        if imageCanBeNull == nil
            return ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        end
        return imageCanBeNull
    end
    

    def releaseAll()
        (@listOfList.length - 1).step(0, -(1)) do |index|
            @availableListOfList[index].clear()
            @availableListOfList[index].addAllList(@listOfList[index])
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("ImageCache: ").append(self.to_s).to_s, self, "releaseAll")
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
        return ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (@nextIndex - 1).step(0, -(1)) do |index|
            width = @widths[index]
            height = @heights[index]
            total = @listOfList[index].size()
            totalAvailable = @availableListOfList[index].size()
            stringBuffer.append(" w: ")
            stringBuffer.appendint(width)
            stringBuffer.append(" h: ")
            stringBuffer.appendint(height)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL)
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

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :ImageFactory, "org/allbinary/image/ImageFactory" unless const_defined?(:ImageFactory, false)

end; end; end

