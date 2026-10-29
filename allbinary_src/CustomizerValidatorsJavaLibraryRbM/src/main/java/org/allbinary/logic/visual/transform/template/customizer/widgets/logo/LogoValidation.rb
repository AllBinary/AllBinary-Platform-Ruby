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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.logo

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class LogoValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :logoFileItem, :logoAbPath, :logoFile, :isFile

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @logoFileItem = nil
        @logoAbPath = nil
        @logoFile = nil
        @isFile = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        @isFile = false
        @logoAbPath = nil
        @logoFile = nil
    end
    

    def constructor1(node)
        method(:initialize).super_method.call()
        initialize_fields
        @isFile = false
        @logoAbPath = AbPath.new(DomSearchHelper.getNode(LogoData.getInstance().IMAGEPATH, node.getChildNodes()).getNodeValue(), StringUtil.getInstance().EMPTY_STRING)
        @logoFile = DomSearchHelper.getNode(LogoData.getInstance().IMAGEFILENAME, node.getChildNodes()).getNodeValue()
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        @isFile = true
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @logoFileItem = hashMap.get(LogoData.getInstance().IMAGE)
        @logoAbPath = AbPath.new(hashMap.get(LogoData.getInstance().IMAGEPATH), StringUtil.getInstance().EMPTY_STRING)
        if @logoFileItem != nil
            @logoFile = HttpRequestUtil.getInstance().generateFileName(@logoFileItem.getName())
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("HashMap: ")
            stringBuffer.append(hashMap.to_s)
            stringBuffer.append("\nLogoFileName: ")
            stringBuffer.append(@logoFile)
            @logUtil.putF(stringBuffer.to_s, self, "getFormData()")
        end
    end
    

    def isValid()
        begin
            valid = true
            fileData = FileData.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("LogoValidation", self, @commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidRequired(@logoAbPath.to_s, 0, 512)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("logoPath is invalid: " + @logoAbPath.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if !StringValidationUtil.getInstance().isValidRequired(@logoFile, fileData.MINLEN, fileData.MAXLEN)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("logoFile is invalid: " + @logoFile, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if @isFile
                if @logoFileItem == nil
                    return false
                end
                if @logoFileItem.getSize() > fileData.MAXIMAGEFILESIZE || @logoFileItem.getSize() < fileData.MINIMAGEFILESIZE
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Image File Is Not The Right Size. " + (fileData.MINIMAGEFILESIZE).to_s + "< > " + (fileData.MAXIMAGEFILESIZE).to_s, self, @commonStrings.IS_VALID)
                    end
                    return false
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Logo Validation: " + (valid).to_s, self, @commonStrings.IS_VALID)
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Logo is not valid.")
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def toHashMap()
        stringUtil = StringUtil.getInstance()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(LogoData.getInstance().IMAGE, stringUtil.EMPTY_STRING)
        if @logoFile != nil
            hashMap.put(LogoData.getInstance().IMAGEPATH, @logoAbPath.to_s)
            hashMap.put(LogoData.getInstance().IMAGEFILENAME, @logoFile)
        else
            hashMap.put(LogoData.getInstance().IMAGEPATH, nil)
            hashMap.put(LogoData.getInstance().IMAGEFILENAME, @logoFile)
        end
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        return ModDomHelper.createNameValueNodes(document, LogoData.getInstance().NAME, hashMap)
    end
    

    # throws Exception
    def processLogoFile()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Processing logoFile: ")
            stringBuffer.append(@logoAbPath.to_s)
            stringBuffer.append(@logoFile)
            @logUtil.putF(stringBuffer.to_s, self, "processLogoFile()")
        end
        LogoImageFileUtil.new(@logoAbPath, @logoFile).saveFiles(@logoFileItem)
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/HttpRequestUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FileData"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/apache/commons/fileupload/FileItem"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoImageFileUtil"

