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
# package views.admin.inventory

require "java/lang/JavaClass"

module ::Views; module Admin; module Inventory

class InventoryUploadMediaUtil
    attr_accessor :logUtil, :mediaUtil, :LARGEWIDTH, :LARGEHEIGHT, :MEDIUMWIDTH, :MEDIUMHEIGHT, :SMALLWIDTH, :SMALLHEIGHT, :SMALL, :MEDIUM, :LARGE, :storeFrontInterface, :itemInterface

    def jfields_views_admin_inventory_InventoryUploadMediaUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @mediaUtil = ::Org::Allbinary::Logic::Visual::Media::MediaUtil.getInstance()
        @LARGEWIDTH = 1024
        @LARGEHEIGHT = 1024
        @MEDIUMWIDTH = 256
        @MEDIUMHEIGHT = 256
        @SMALLWIDTH = 128
        @SMALLHEIGHT = 128
        @SMALL = "Small"
        @MEDIUM = "Medium"
        @LARGE = "Large"
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
    end
    

    def initialize(storeFrontInterface, itemInterface)
        jfields_views_admin_inventory_InventoryUploadMediaUtil
        @storeFrontInterface = storeFrontInterface
        @itemInterface = itemInterface
    end
    

    # throws Exception
    def saveFiles(byteArray, fileName, mediaData)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Start FileName: " + fileName, self, "saveFiles()")
        end
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(fileName)
            raise StandardError.new("Image File Name Was Null")
        end
        fileUtil = ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
        stringBuffer.append(@storeFrontInterface.getCurrentHostNamePath())
        stringBuffer.append(@itemInterface.getCategory())
        fullPath = stringBuffer.to_s
        imageDirectoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullPath)
        if !imageDirectoryFile.isDirectory()
            raise StandardError.new("Unable to save file to non existant directory")
        end
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(mediaData.getName())
        originalImageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Saving Original Image: " + (originalImageFile).to_s, self, "saveFiles()")
        end
        originalImageFile.createNewFile()
        fileUtil.write(::Java::Io::ByteArrayInputStream.new(byteArray), originalImageFile)
        uploadMedia = ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::Media::UploadMediaSingleton.getInstance()
        isMediaSupported = uploadMedia.isWriterSupported(mediaData.getName()) || uploadMedia.isReaderSupported(mediaData.getName())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Is Image Type: ")
            stringBuffer.append(mediaData.getName())
            stringBuffer.append(" supported: ")
            stringBuffer.appendboolean(isMediaSupported)
            @logUtil.putF(stringBuffer.to_s, self, "saveFiles()")
        end
        defaultMediaData = ::Org::Allbinary::Logic::Visual::Media::MediaData.getDefault()
        self.setFileNames(fileName)
        if isMediaSupported
            isMediaResizable = uploadMedia.isWriterMedia(mediaData.getName(), ::Org::Allbinary::Logic::Visual::Media::MediaTypeData.getInstance().RESIZABLE_MEDIA)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Is ")
                stringBuffer.append(mediaData.to_s)
                stringBuffer.append(" Image Resize Supported:")
                stringBuffer.appendboolean(uploadMedia.isSupported(mediaData.getName()))
                stringBuffer.append(" WriterMedia: ")
                stringBuffer.appendboolean(isMediaResizable)
                @logUtil.putF(stringBuffer.to_s, self, "saveFiles()")
            end
            if isMediaResizable
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                    @logUtil.putF("Saving Small Image: " + (@itemInterface.getSmallImage()).to_s, self, "saveFiles()")
                end
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getSmallImage(), fullPath, mediaData, @SMALLWIDTH, @SMALLHEIGHT)
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getMediumImage(), fullPath, mediaData, @MEDIUMWIDTH, @MEDIUMHEIGHT)
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getLargeImage(), fullPath, mediaData, @LARGEWIDTH, @LARGEHEIGHT)
            else
                isConvertable = mediaData.isConvertableTo(defaultMediaData)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Converting: ")
                    stringBuffer.append(defaultMediaData.getName())
                    stringBuffer.append(" into ")
                    stringBuffer.append(mediaData.getName())
                    stringBuffer.append(" if Convertable is it: ")
                    stringBuffer.appendboolean(isConvertable)
                    @logUtil.putF(stringBuffer.to_s, self, "saveFiles()")
                end
                if isConvertable
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
                        @logUtil.putF("Saving Small Image: " + (@itemInterface.getSmallImage()).to_s, self, "saveFiles()")
                    end
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getSmallImage(), fullPath, defaultMediaData, @SMALLWIDTH, @SMALLHEIGHT)
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getMediumImage(), fullPath, defaultMediaData, @MEDIUMWIDTH, @MEDIUMHEIGHT)
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getLargeImage(), fullPath, defaultMediaData, @LARGEWIDTH, @LARGEHEIGHT)
                else
                    smallImageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(@itemInterface.getSmallImage())
                    smallImageFile.createNewFile()
                    fileUtil.write(::Java::Io::ByteArrayInputStream.new(byteArray), smallImageFile)
                    mediumImageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(@itemInterface.getMediumImage())
                    smallImageFile.createNewFile()
                    fileUtil.write(::Java::Io::ByteArrayInputStream.new(byteArray), mediumImageFile)
                    largeImageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(@itemInterface.getSmallImage())
                    largeImageFile.createNewFile()
                    fileUtil.write(::Java::Io::ByteArrayInputStream.new(byteArray), largeImageFile)
                end
            end
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.END_, self, "saveFiles()")
        end
        return @itemInterface
    end
    

    def setFileNames(fileName)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@itemInterface.getId())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(::Org::Allbinary::Logic::Visual::Media::MediaData.getDefault().getName())
        _END_ = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(fileName)
        stringBuffer.append(@SMALL)
        stringBuffer.append(_END_)
        newImageFileName = stringBuffer.to_s
        @itemInterface.setSmallImage(newImageFileName)
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(fileName)
        stringBuffer.append(@MEDIUM)
        stringBuffer.append(_END_)
        newImageFileName = stringBuffer.to_s
        @itemInterface.setMediumImage(newImageFileName)
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(fileName)
        stringBuffer.append(@LARGE)
        stringBuffer.append(_END_)
        newImageFileName = stringBuffer.to_s
        @itemInterface.setLargeImage(newImageFileName)
    end
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; module Media; autoload :UploadMediaSingleton, "org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton" unless const_defined?(:UploadMediaSingleton, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaData, "org/allbinary/logic/visual/media/MediaData" unless const_defined?(:MediaData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaTypeData, "org/allbinary/logic/visual/media/MediaTypeData" unless const_defined?(:MediaTypeData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaUtil, "org/allbinary/logic/visual/media/MediaUtil" unless const_defined?(:MediaUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

