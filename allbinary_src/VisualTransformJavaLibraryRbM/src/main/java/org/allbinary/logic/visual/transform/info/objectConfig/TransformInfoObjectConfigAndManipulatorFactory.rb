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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase"

class TransformInfoObjectConfigAndManipulatorFactory < TransformInfoObjectConfigAndManipulatorFactoryBase
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoObjectConfigAndManipulatorFactory.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface, objectConfigFileAbPath)
        begin
            data = CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(objectConfigFileAbPath)
            return self.getInstance(abeClientInformation, transformInfoInterface, DomDocumentHelper.create(data))
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Could Not Load Object Config", TransformInfoObjectConfigAndManipulatorFactory.getInstance(), @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface)
        begin
            stringValidationUtil = StringValidationUtil.getInstance()
            if transformInfoInterface != nil && !stringValidationUtil.isEmpty(transformInfoInterface.getStoreName())
                return GenericStoreTransformInfoObjectConfig.new(abeClientInformation, transformInfoInterface)
            else
                return TransformInfoObjectConfig.new(transformInfoInterface)
            end
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface, document)
        begin
            stringValidationUtil = StringValidationUtil.getInstance()
            if transformInfoInterface != nil && !stringValidationUtil.isEmpty(transformInfoInterface.getStoreName())
                return GenericStoreTransformInfoObjectConfig.new(abeClientInformation, transformInfoInterface, document)
            else
                return TransformInfoObjectConfig.new(transformInfoInterface, document)
            end
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), "getInstance(document)", e)
            end
            raise e
        end
    end

    def self.instance()
        TransformInfoObjectConfigAndManipulatorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoObjectConfigAndManipulatorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoObjectConfigAndManipulatorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoObjectConfigAndManipulatorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :GenericStoreTransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig"
autoload :TransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

begin
    TransformInfoObjectConfigAndManipulatorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

