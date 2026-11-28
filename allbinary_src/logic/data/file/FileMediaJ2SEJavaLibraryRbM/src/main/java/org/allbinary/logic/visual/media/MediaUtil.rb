# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.media

require "java/lang/JavaClass"
# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"

module ::Org; module Allbinary; module Logic; module Visual; module Media

#import com.sun.imageio.plugins.common.ImageUtil;
class MediaUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_media_MediaUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_media_MediaUtil
    end
    

    # throws Exception
    def saveImageFile(originalImageFile, newImageFileName, category, mediaData, newWidth, newHeight)
        if originalImageFile == nil || !originalImageFile.isFile()
            raise StandardError.new("Original Image File Does Not Exist.")
        end
        bufferedImage = ImageIOUtil.read(originalImageFile)
        if bufferedImage == nil
            raise StandardError.new("Unable to find ImageReader for this file.")
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            hashMap = self.getImageBufferPropertyHashMap(bufferedImage)
            @logUtil.putF("Image Properties: " + hashMap.to_s, self, "saveImageFile()")
        end
        imageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(category + newImageFileName)
        imageFile.createNewFile()
        imageUtil = ::Org::Allbinary::Media::Image::ImageUtil.getInstance()
        newBufferedImage = imageUtil.createBufferedImageForSave(bufferedImage, newWidth, newHeight)
        isWritten = ImageIOUtil.write(newBufferedImage, mediaData.getName(), imageFile)
        if !isWritten
            raise StandardError.new("Unable to write.")
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Get Path: ")
            stringBuffer.append(originalImageFile.getPath())
            stringBuffer.append("\nNewImageFileName: ")
            stringBuffer.append(newImageFileName)
            stringBuffer.append("\nCategory: ")
            stringBuffer.append(category)
            stringBuffer.append("\nSave File Type: ")
            stringBuffer.append(mediaData.getName())
            stringBuffer.append("\nNew").append(commonLabels.WIDTH_LABEL)
            stringBuffer.appendint(newWidth)
            stringBuffer.append("\nNew").append(commonLabels.HEIGHT_LABEL)
            stringBuffer.appendint(newHeight)
            stringBuffer.append("\nFile Length: ")
            stringBuffer.appendlong(originalImageFile.length())
            stringBuffer.append("\nNew File Length: ")
            stringBuffer.appendlong(imageFile.length())
            @logUtil.putF(stringBuffer.to_s, self, "saveImageFile()")
        end
    end
    

    def self.getImageBufferPropertyHashMap(bufferedImage)
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        propertyStringArray = bufferedImage.getPropertyNames()
        if propertyStringArray != nil
            (0...propertyStringArray.length).each do |index|
                propertyObject = bufferedImage.getProperty(propertyStringArray[index])
                hashMap.put(propertyStringArray[index], propertyObject.to_s)
            end
        end
        return hashMap
    end

    def self.instance()
        MediaUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MediaUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MediaUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MediaUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :ImageIOUtil, "org/allbinary/logic/visual/media/ImageIOUtil" unless const_defined?(:ImageIOUtil, false)
autoload :MediaData, "org/allbinary/logic/visual/media/MediaData" unless const_defined?(:MediaData, false)

begin
    MediaUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

