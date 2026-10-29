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

# require "java/io/ByteArrayInputStream"

class InventoryUploadMediaUtil
    attr_accessor :logUtil, :mediaUtil, :LARGEWIDTH, :LARGEHEIGHT, :MEDIUMWIDTH, :MEDIUMHEIGHT, :SMALLWIDTH, :SMALLHEIGHT, :SMALL, :MEDIUM, :LARGE, :storeFrontInterface, :itemInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @mediaUtil = MediaUtil.getInstance()
        @LARGEWIDTH = 1024
        @LARGEHEIGHT = 1024
        @MEDIUMWIDTH = 256
        @MEDIUMHEIGHT = 256
        @SMALLWIDTH = 128
        @SMALLHEIGHT = 128
        @SMALL = "Small"
        @MEDIUM = "Medium"
        @LARGE = "Large"
        @storeFrontInterface = nil
        @itemInterface = nil
    end
    

    def initialize(storeFrontInterface, itemInterface)
        initialize_fields
        @storeFrontInterface = storeFrontInterface
        @itemInterface = itemInterface
    end
    

    # throws Exception
    def saveFiles(byteArray, fileName, mediaData)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Start FileName: " + fileName, self, "saveFiles()")
        end
        if StringValidationUtil.getInstance().isEmpty(fileName)
            raise StandardError.new("Image File Name Was Null")
        end
        fileUtil = FileUtil.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getWebappPath())
        stringBuffer.append(@storeFrontInterface.getCurrentHostNamePath())
        stringBuffer.append(@itemInterface.getCategory())
        fullPath = stringBuffer.to_s
        imageDirectoryFile = AbFile.createAbFile(fullPath)
        if !imageDirectoryFile.isDirectory()
            raise StandardError.new("Unable to save file to non existant directory")
        end
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(mediaData.getName())
        originalImageFile = AbFile.createAbFile(stringBuffer.to_s)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF("Saving Original Image: " + (originalImageFile).to_s, self, "saveFiles()")
        end
        originalImageFile.createNewFile()
        fileUtil.write(ByteArrayInputStream.new(byteArray), originalImageFile)
        uploadMedia = UploadMediaSingleton.getInstance()
        isMediaSupported = uploadMedia.isWriterSupported(mediaData.getName()) || uploadMedia.isReaderSupported(mediaData.getName())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Is Image Type: ")
            stringBuffer.append(mediaData.getName())
            stringBuffer.append(" supported: ")
            stringBuffer.appendboolean(isMediaSupported)
            @logUtil.putF(stringBuffer.to_s, self, "saveFiles()")
        end
        defaultMediaData = MediaData.getDefault()
        self.setFileNames(fileName)
        if isMediaSupported
            isMediaResizable = uploadMedia.isWriterMedia(mediaData.getName(), MediaTypeData.getInstance().RESIZABLE_MEDIA)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
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
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                    @logUtil.putF("Saving Small Image: " + (@itemInterface.getSmallImage()).to_s, self, "saveFiles()")
                end
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getSmallImage(), fullPath, mediaData, @SMALLWIDTH, @SMALLHEIGHT)
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getMediumImage(), fullPath, mediaData, @MEDIUMWIDTH, @MEDIUMHEIGHT)
                @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getLargeImage(), fullPath, mediaData, @LARGEWIDTH, @LARGEHEIGHT)
            else
                isConvertable = mediaData.isConvertableTo(defaultMediaData)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
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
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
                        @logUtil.putF("Saving Small Image: " + (@itemInterface.getSmallImage()).to_s, self, "saveFiles()")
                    end
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getSmallImage(), fullPath, defaultMediaData, @SMALLWIDTH, @SMALLHEIGHT)
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getMediumImage(), fullPath, defaultMediaData, @MEDIUMWIDTH, @MEDIUMHEIGHT)
                    @mediaUtil.saveImageFile(originalImageFile, @itemInterface.getLargeImage(), fullPath, defaultMediaData, @LARGEWIDTH, @LARGEHEIGHT)
                else
                    smallImageFile = AbFile.createAbFile(@itemInterface.getSmallImage())
                    smallImageFile.createNewFile()
                    fileUtil.write(ByteArrayInputStream.new(byteArray), smallImageFile)
                    mediumImageFile = AbFile.createAbFile(@itemInterface.getMediumImage())
                    smallImageFile.createNewFile()
                    fileUtil.write(ByteArrayInputStream.new(byteArray), mediumImageFile)
                    largeImageFile = AbFile.createAbFile(@itemInterface.getSmallImage())
                    largeImageFile.createNewFile()
                    fileUtil.write(ByteArrayInputStream.new(byteArray), largeImageFile)
                end
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.END_, self, "saveFiles()")
        end
        return @itemInterface
    end
    

    def setFileNames(fileName)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@itemInterface.getId())
        stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(MediaData.getDefault().getName())
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

require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/media/MediaData"
require "org/allbinary/logic/visual/media/MediaTypeData"
require "org/allbinary/logic/visual/media/MediaUtil"
require "org/allbinary/string/CommonStrings"

