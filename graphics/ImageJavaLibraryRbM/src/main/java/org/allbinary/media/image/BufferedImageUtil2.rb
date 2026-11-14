# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.image

# require "java/awt"
# require "java/awt/image/BufferedImage"

class BufferedImageUtil2
    attr_accessor :imageUtil

    def initialize_fields
        @imageUtil = ImageUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BufferedImageUtil2.instance
    end
    

    def createSpriteImage(bufferedImageArray)
        columns = bufferedImageArray.length
        max = columns
        rows = 0
        if bufferedImageArray.length < columns
            columns = bufferedImageArray.length
        end
        rows = (bufferedImageArray.length / columns)
        if bufferedImageArray.length % columns != 0
            rows += 1
        end
        bufferedImage = @imageUtil.create(bufferedImageArray[0].getWidth(nil) * columns, bufferedImageArray[0].getHeight(nil) * rows)
        g = bufferedImage.createGraphics()
        columnIndex = 0
        rowIndex = 0
        (0...bufferedImageArray.length).each do |index|
            if index / max != 0 && index % max == 0
                rowIndex += 1
                columnIndex = 0
            end
            g.drawImage(bufferedImageArray[index], bufferedImageArray[index].getWidth(nil) * columnIndex, bufferedImageArray[index].getHeight(nil) * rowIndex, bufferedImageArray[index].getWidth(nil), bufferedImageArray[index].getHeight(nil), nil)
            columnIndex += 1
        end
        g.dispose()
        return bufferedImage
    end

    def self.instance()
        BufferedImageUtil2.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BufferedImageUtil2.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BufferedImageUtil2.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedImageUtil2"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"

begin
    BufferedImageUtil2.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

