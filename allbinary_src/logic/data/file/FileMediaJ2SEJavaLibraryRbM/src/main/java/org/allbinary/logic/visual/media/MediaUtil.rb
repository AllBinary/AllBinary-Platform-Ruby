# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.media

# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"

#import com.sun.imageio.plugins.common.ImageUtil;
class MediaUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return MediaUtil.instance
    end
    

    def initialize()
        initialize_fields
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
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)
            hashMap = self.getImageBufferPropertyHashMap(bufferedImage)
            @logUtil.putF("Image Properties: " + hashMap.to_s, self, "saveImageFile()")
        end
        imageFile = AbFile.createAbFile(category + newImageFileName)
        imageFile.createNewFile()
        imageUtil = ImageUtil.getInstance()
        newBufferedImage = imageUtil.createBufferedImageForSave(bufferedImage, newWidth, newHeight)
        isWritten = ImageIOUtil.write(newBufferedImage, mediaData.getName(), imageFile)
        if !isWritten
            raise StandardError.new("Unable to write.")
        end
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)
            commonLabels = CommonLabels.getInstance()
            stringBuffer = StringMaker.new()
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
        hashMap = StdUtil.getInstance().createHashMap()
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

autoload :HashMap, "java/util/HashMap"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :ImageIOUtil, "org/allbinary/logic/visual/media/ImageIOUtil"
autoload :MediaData, "org/allbinary/logic/visual/media/MediaData"

begin
    MediaUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

