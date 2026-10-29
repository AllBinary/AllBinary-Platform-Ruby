# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.media

# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"
# require "javax/imageio/ImageIO"

class ImageIOUtil
    

    # throws Exception
    def self.read(file)
        return ImageIO.read(AbFileNativeUtil.get(file))
    end
    

    # throws Exception
    def self.write(renderedImage, name, file)
        return ImageIO.write(renderedImage, name, AbFileNativeUtil.get(file))
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"

