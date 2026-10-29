# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.media

# require "javax/imageio/ImageIO"

class MediaIOUtil
    

    def self.getInstance()
        return MediaIOUtil.instance
    end
    

    def getReaderFormatNames()
        return ImageIO.getReaderFormatNames()
    end
    

    def getWriterFormatNames()
        return ImageIO.getWriterFormatNames()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class MediaIOUtil
    @@instance = MediaIOUtil.new()
end

