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
        MediaIOUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MediaIOUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MediaIOUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MediaIOUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    MediaIOUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

