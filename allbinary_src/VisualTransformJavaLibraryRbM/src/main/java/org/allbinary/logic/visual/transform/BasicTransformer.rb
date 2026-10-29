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
# package org.allbinary.logic.visual.transform

# require "java/io/ByteArrayInputStream"
# require "java/io/ByteArrayOutputStream"
# require "java/io/InputStream"
# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/AbTransformer"

class BasicTransformer < AbTransformer
    attr_accessor :logUtil, :streamUtil, :abeClientInformation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @streamUtil = StreamUtil.getInstance()
        @abeClientInformation = nil
    end
    

    def initialize(abeClientInformation, transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @abeClientInformation = abeClientInformation
        self.setTemplateAsInputStream()
    end
    

    # throws Exception
    def setEncryptedTemplateFileAsInputStream(file)
        outputStream = nil
        inputStream = nil
        begin
            outputStream = ByteArrayOutputStream.new()
            inputStream = AbFileInputStream.new(file)
            outputStream = @streamUtil.get(inputStream, outputStream, Array.new(16384, 0))
            abCrypt = AbCrypt.new(KeySpecFactory::DESEDE, AbKeys.getInstance().getKey(@abeClientInformation, file.getAbsolutePath()))
            decrypted = abCrypt.decrypt(outputStream.toByteArray())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Decrypted Template: \n" + (decrypted.pack("c*").force_encoding("UTF-8")).to_s, self, "setEncryptedTemplateFileAsInputStream(file)")
            end
            self.setInputStream(ByteArrayInputStream.new(decrypted))
            self.setURIResolver(BasicUriResolver.new(TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Failed to get Encrypted File: ")
                stringBuffer.append(file.getPath())
                stringBuffer.append(" \nName:")
                stringBuffer.append(file.getName())
                @logUtil.put(stringBuffer.to_s, self, "setEncryptedTemplateFileAsInputStream()", e)
            end
            raise e
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
    end
    

    # throws Exception
    def setEncryptedTemplateAsInputStream()
        outputStream = nil
        inputStream = nil
        begin
            outputStream = ByteArrayOutputStream.new()
            inputStream = ByteArrayInputStream.new(self.getTransformInfoInterface().getTemplate().getBytes())
            outputStream = @streamUtil.get(inputStream, outputStream, Array.new(16384, 0))
            abCrypt = AbCrypt.new(KeySpecFactory::DESEDE, AbKeys.getInstance().getKey(@abeClientInformation, self.getTransformInfoInterface().getName()))
            decrypted = abCrypt.decrypt(outputStream.toByteArray())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Decrypted Template: \n" + decrypted.to_s, self, "setEncryptedTemplateAsInputStream()")
            end
            self.setInputStream(ByteArrayInputStream.new(decrypted))
            self.setURIResolver(BasicUriResolver.new(TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put("Failed to set with template: " + (self.getTransformInfoInterface().getTemplateFilePath()).to_s, self, "setEncryptedTemplateFileAsInputStream()", e)
            end
            raise e
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
    end
    

    # throws Exception
    def setTemplateAsInputStream()
        inputStream = nil
        outputStream = nil
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
            end
            transformInfoTemplateData = TransformInfoTemplateData.getInstance()
            pathUtil = PathUtil.getInstance()
            if self.getTransformInfoInterface().getTemplateFilePath() != nil
                extension = pathUtil.getExtensionWithAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                filePath = pathUtil.getWithoutExtensionWithAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                    @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                end
                if (extension <=> transformInfoTemplateData.UNCRYPTED_EXTENSION) == 0
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(filePath)
                    stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
                    stringBuffer.append(transformInfoTemplateData.ENCRYPTED_EXTENSION)
                    encFile = AbFile.createAbFile(stringBuffer.to_s)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                        @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                    end
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Encrypted Template File isFile=")
                        stringBuffer.appendboolean(encFile.isFile())
                        stringBuffer.append("\nEncTemplateFilePath: ")
                        stringBuffer.append(encFile.getPath())
                        @logUtil.putF(stringBuffer.to_s, self, "setTemplateAsInputStream()")
                    end
                    if encFile.isFile()
                        self.setEncryptedTemplateFileAsInputStream(encFile)
                        return
                    else
                        file = AbFile.createAbFileFromAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                            @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                        end
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                            @logUtil.putF("Template File isFile=" + (file.isFile()).to_s, self, "setTemplateAsInputStream()")
                        end
                        if file.isFile()
                            inputStream = AbFileInputStream.new(file)
                            outputStream = ByteArrayOutputStream.new()
                            outputStream = @streamUtil.get(inputStream, outputStream, Array.new(16384, 0))
                            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                                @logUtil.putF("Template: " + outputStream.to_s, self, "getTemplateAsInputStream()")
                            end
                            self.setInputStream(ByteArrayInputStream.new(outputStream.toByteArray()))
                            self.setURIResolver(BasicUriResolver.new(transformInfoTemplateData.UNCRYPTED_EXTENSION))
                            return
                        end
                    end
                elsif (extension <=> transformInfoTemplateData.ENCRYPTED_EXTENSION) == 0
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(filePath)
                    stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
                    stringBuffer.append(transformInfoTemplateData.ENCRYPTED_EXTENSION)
                    file = AbFile.createAbFile(stringBuffer.to_s)
                    if file.isFile()
                        self.setEncryptedTemplateFileAsInputStream(file)
                    end
                else
                    raise StandardError.new("View Template File Type Is Not Recognized: " + (self.getTransformInfoInterface().getTemplateFilePath()).to_s)
                end
            else
                self.setEncryptedTemplateAsInputStream()
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put("Failed to get Template Data", self, "setTemplateAsInputStream()", e)
            end
            raise e
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
        raise StandardError.new("Error setTemplateAsInputStream()")
    end
end

require "org/allbinary/data/tree/dom/BasicUriResolver"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/jcehelper/AbCrypt"
require "org/allbinary/logic/control/crypt/jcehelper/KeySpecFactory"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/PathUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/AbKeys"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData"

