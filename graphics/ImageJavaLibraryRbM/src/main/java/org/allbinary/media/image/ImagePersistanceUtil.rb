# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.image

# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "java/io/IOException"
# require "javax/imageio/IIOImage"
# require "javax/imageio/ImageIO"
# require "javax/imageio/ImageWriteParam"
# require "javax/imageio/ImageWriter"
# require "javax/imageio/stream/ImageOutputStream"

class ImagePersistanceUtil
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ImagePersistanceUtil.instance
    end
    

    # throws Exception
    def saveWithBatik(file, bufferedImage)
        batikPNGImageWriter = PNGImageWriter.new()
        fileOutputStream = AbFileOutputStream.createFromAbFile(file)
        begin
            batikPNGImageWriter.writeImage(bufferedImage, fileOutputStream)
        ensure
            fileOutputStream.flush()
            StreamUtil.getInstance().close(fileOutputStream)
        end
        @logUtil.putF("Wrote Image: " + (file.getAbsolutePath()).to_s, self, @commonStrings.SAVE)
    end
    

    def saveWithImageIO(filePath, bufferedImage)
        self.saveWithImageIO(File.new(filePath), bufferedImage)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def saveWithImageIO(file, bufferedImage)
        writer = nil
        ios = nil
        begin
            iter = ImageIO.getImageWritersByFormatName("jpeg")
            if !iter.hasNext()
                @logUtil.putF("Unable to save image to jpeg file type.", self, @commonStrings.SAVE)
                return
            end
            writer = iter.next_()
            ios = ImageIO.createImageOutputStream(file)
            writer.setOutput(ios)
            iwp = writer.getDefaultWriteParam()
            iwp.setCompressionMode(ImageWriteParam::MODE_EXPLICIT)
            iwp.setCompressionQuality(0.95)
            writer.write(nil, IIOImage.new(bufferedImage, nil, nil), iwp)
            @logUtil.putF("Wrote Image: " + (file.getAbsolutePath()).to_s, self, @commonStrings.SAVE)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
        ensure
            begin
                if ios != nil
                    ios.flush()
                    begin
                        if ios != nil
                            @logUtil.putF(ios.to_s, ios, @commonStrings.CLOSE)
                            ios.close()
                        end
                    rescue StandardError => e
                        @logUtil.put(@commonStrings.EXCEPTION, ios, @commonStrings.CLOSE, e)
                    end
                end
                if writer != nil
                    writer.dispose()
                end
            rescue IOError => e2
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e2)
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Iterator"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/string/CommonStrings"
require "org/apache/batik/ext/awt/image/codec/png/PNGImageWriter"

class ImagePersistanceUtil
    @@instance = ImagePersistanceUtil.new()
end

