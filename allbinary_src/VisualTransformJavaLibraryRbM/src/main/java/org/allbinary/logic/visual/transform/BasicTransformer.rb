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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/AbTransformer"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

class BasicTransformer < AbTransformer
    attr_accessor :logUtil, :streamUtil, :abeClientInformation

    def jfields_org_allbinary_logic_visual_transform_BasicTransformer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
    end
    

    def initialize(abeClientInformation, transformInfoInterface)
        super(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_BasicTransformer
        @abeClientInformation = abeClientInformation
        self.setTemplateAsInputStream()
    end
    

    # throws Exception
    def setEncryptedTemplateFileAsInputStream(file)
        outputStream = nil
        inputStream = nil
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            inputStream = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(file)
            outputStream = @streamUtil.get(inputStream, outputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            abCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::Jcehelper::AbCrypt.new(::Org::Allbinary::Logic::ControlPackage::Crypt::Jcehelper::KeySpecFactory::DESEDE, ::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(@abeClientInformation, file.getAbsolutePath()))
            decrypted = abCrypt.decrypt(outputStream.toByteArray())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Decrypted Template: \n" + (decrypted.pack("c*").force_encoding("UTF-8")).to_s, self, "setEncryptedTemplateFileAsInputStream(file)")
            end
            self.setInputStream(::Java::Io::ByteArrayInputStream.new(decrypted))
            self.setURIResolver(::Org::Allbinary::DataPackage::Tree::Dom::BasicUriResolver.new(::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :setEncryptedTemplateFileAsInputStream, 1
    

    # throws Exception
    def setEncryptedTemplateAsInputStream()
        outputStream = nil
        inputStream = nil
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            inputStream = ::Java::Io::ByteArrayInputStream.new(self.getTransformInfoInterface().getTemplate().getBytes())
            outputStream = @streamUtil.get(inputStream, outputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            abCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::Jcehelper::AbCrypt.new(::Org::Allbinary::Logic::ControlPackage::Crypt::Jcehelper::KeySpecFactory::DESEDE, ::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(@abeClientInformation, self.getTransformInfoInterface().getName()))
            decrypted = abCrypt.decrypt(outputStream.toByteArray())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Decrypted Template: \n" + decrypted.to_s, self, "setEncryptedTemplateAsInputStream()")
            end
            self.setInputStream(::Java::Io::ByteArrayInputStream.new(decrypted))
            self.setURIResolver(::Org::Allbinary::DataPackage::Tree::Dom::BasicUriResolver.new(::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put("Failed to set with template: " + (self.getTransformInfoInterface().getTemplateFilePath()).to_s, self, "setEncryptedTemplateFileAsInputStream()", e)
            end
            raise e
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
    end
    java_overload :setEncryptedTemplateAsInputStream, 0
    

    # throws Exception
    def setTemplateAsInputStream()
        inputStream = nil
        outputStream = nil
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
            end
            transformInfoTemplateData = ::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance()
            pathUtil = ::Org::Allbinary::Logic::Io::Path::PathUtil.getInstance()
            if self.getTransformInfoInterface().getTemplateFilePath() != nil
                extension = pathUtil.getExtensionWithAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                filePath = pathUtil.getWithoutExtensionWithAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                    @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                end
                if (extension <=> transformInfoTemplateData.UNCRYPTED_EXTENSION) == 0
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(filePath)
                    stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
                    stringBuffer.append(transformInfoTemplateData.ENCRYPTED_EXTENSION)
                    encFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                        @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                    end
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(self.getTransformInfoInterface().getTemplateFilePath())
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                            @logUtil.putF(self.getTransformInfoInterface().log(), self, "setTemplateAsInputStream()")
                        end
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                            @logUtil.putF("Template File isFile=" + (file.isFile()).to_s, self, "setTemplateAsInputStream()")
                        end
                        if file.isFile()
                            inputStream = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(file)
                            outputStream = ::Java::Io::ByteArrayOutputStream.new()
                            outputStream = @streamUtil.get(inputStream, outputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
                            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                                @logUtil.putF("Template: " + outputStream.to_s, self, "getTemplateAsInputStream()")
                            end
                            self.setInputStream(::Java::Io::ByteArrayInputStream.new(outputStream.toByteArray()))
                            self.setURIResolver(::Org::Allbinary::DataPackage::Tree::Dom::BasicUriResolver.new(transformInfoTemplateData.UNCRYPTED_EXTENSION))
                            return
                        end
                    end
                elsif (extension <=> transformInfoTemplateData.ENCRYPTED_EXTENSION) == 0
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(filePath)
                    stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
                    stringBuffer.append(transformInfoTemplateData.ENCRYPTED_EXTENSION)
                    file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put("Failed to get Template Data", self, "setTemplateAsInputStream()", e)
            end
            raise e
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
        raise StandardError.new("Error setTemplateAsInputStream()")
    end
    java_overload :setTemplateAsInputStream, 0
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver" unless const_defined?(:BasicUriResolver, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module Jcehelper; autoload :AbCrypt, "org/allbinary/logic/control/crypt/jcehelper/AbCrypt" unless const_defined?(:AbCrypt, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module Jcehelper; autoload :KeySpecFactory, "org/allbinary/logic/control/crypt/jcehelper/KeySpecFactory" unless const_defined?(:KeySpecFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil" unless const_defined?(:PathUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbKeys, "org/allbinary/logic/system/security/AbKeys" unless const_defined?(:AbKeys, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module Template; autoload :TransformInfoTemplateData, "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData" unless const_defined?(:TransformInfoTemplateData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

