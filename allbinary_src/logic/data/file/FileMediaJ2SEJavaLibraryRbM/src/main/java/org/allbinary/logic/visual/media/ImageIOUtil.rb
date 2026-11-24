# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.media

# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"
# require "javax/imageio/ImageIO"

module ::Org; module Allbinary; module Logic; module Visual; module Media

class ImageIOUtil
    

    # throws Exception
    def self.read(file)
        return ImageIO.read(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file))
    end
    

    # throws Exception
    def self.write(renderedImage, name, file)
        return ImageIO.write(renderedImage, name, ::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file))
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end

end; end; end; end; end

