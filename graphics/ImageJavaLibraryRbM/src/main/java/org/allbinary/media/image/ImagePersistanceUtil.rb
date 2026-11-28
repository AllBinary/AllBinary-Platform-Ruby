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

module ::Org; module Allbinary; module Media; module Image

class ImagePersistanceUtil
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_media_image_ImagePersistanceUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_media_image_ImagePersistanceUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def saveWithBatik(file, bufferedImage)
        batikPNGImageWriter = ::Org::Apache::Batik::Ext::Awt::Image::Codec::Png::PNGImageWriter.new()
        fileOutputStream = ::Org::Allbinary::Logic::Io::AbFileOutputStream.createFromAbFile(file)
        begin
            batikPNGImageWriter.writeImage(bufferedImage, fileOutputStream)
        ensure
            fileOutputStream.flush()
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(fileOutputStream)
        end
        @logUtil.putF("Wrote Image: " + (file.getAbsolutePath()).to_s, self, @commonStrings.SAVE)
    end
    

    def saveWithImageIO_j2_1(filePath, bufferedImage)
        self.saveWithImageIO(File.new(filePath), bufferedImage)
    end
    

    def saveWithImageIO_j2_2(file, bufferedImage)
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

    def saveWithImageIO(*java_overload_args)
        return saveWithImageIO_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method saveWithImageIO takes #{java_overload_args.length} arguments"
    end

    def saveWithImageIO_j2(*java_overload_args)
        return saveWithImageIO_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return saveWithImageIO_j2_2(*java_overload_args)
    end

    def self.instance()
        ImagePersistanceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImagePersistanceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImagePersistanceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImagePersistanceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Iterator, "java/util/Iterator" unless const_defined?(:Iterator, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Batik; module Ext; module Awt; module Image; module Codec; module Png; autoload :PNGImageWriter, "org/apache/batik/ext/awt/image/codec/png/PNGImageWriter" unless const_defined?(:PNGImageWriter, false); end; end; end; end; end; end; end; end

begin
    ImagePersistanceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

