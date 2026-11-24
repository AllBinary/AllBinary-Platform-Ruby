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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Logo

class LogoValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :logoFileItem, :logoAbPath, :logoFile, :isFile

    def jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @logoFileItem = nil unless instance_variable_defined?(:@logoFileItem)
        @logoAbPath = nil unless instance_variable_defined?(:@logoAbPath)
        @logoFile = nil unless instance_variable_defined?(:@logoFile)
        @isFile = nil unless instance_variable_defined?(:@isFile)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1(*args)
        else raise ArgumentError, "No constructor of LogoValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_0()
        LogoValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation
        @isFile = false
        @logoAbPath = nil
        @logoFile = nil
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1_1(node)
        LogoValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation
        @isFile = false
        @logoAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(LogoData.getInstance().IMAGEPATH, node.getChildNodes()).getNodeValue(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @logoFile = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(LogoData.getInstance().IMAGEFILENAME, node.getChildNodes()).getNodeValue()
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation_1_2(hashMap)
        LogoValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoValidation
        @isFile = true
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @logoFileItem = hashMap.get(LogoData.getInstance().IMAGE)
        @logoAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(hashMap.get(LogoData.getInstance().IMAGEPATH), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        if @logoFileItem != nil
            @logoFile = ::Org::Allbinary::Logic::Communication::Http::Request::HttpRequestUtil.getInstance().generateFileName(@logoFileItem.getName())
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("HashMap: ")
            stringBuffer.append(hashMap.to_s)
            stringBuffer.append("\nLogoFileName: ")
            stringBuffer.append(@logoFile)
            @logUtil.putF(stringBuffer.to_s, self, "getFormData()")
        end
    end
    java_overload :getFormData, 1
    

    def isValid()
        begin
            valid = true
            fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("LogoValidation", self, @commonStrings.IS_VALID)
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@logoAbPath.to_s, 0, 512)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("logoPath is invalid: " + @logoAbPath.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@logoFile, fileData.MINLEN, fileData.MAXLEN)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("logoFile is invalid: " + @logoFile, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if @isFile
                if @logoFileItem == nil
                    return false
                end
                if @logoFileItem.getSize() > fileData.MAXIMAGEFILESIZE || @logoFileItem.getSize() < fileData.MINIMAGEFILESIZE
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Image File Is Not The Right Size. " + (fileData.MINIMAGEFILESIZE).to_s + "< > " + (fileData.MAXIMAGEFILESIZE).to_s, self, @commonStrings.IS_VALID)
                    end
                    return false
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Logo Validation: " + (valid).to_s, self, @commonStrings.IS_VALID)
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Logo is not valid.")
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    def toHashMap()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, LogoData.getInstance().NAME, hashMap)
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def processLogoFile()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Processing logoFile: ")
            stringBuffer.append(@logoAbPath.to_s)
            stringBuffer.append(@logoFile)
            @logUtil.putF(stringBuffer.to_s, self, "processLogoFile()")
        end
        LogoImageFileUtil.new(@logoAbPath, @logoFile).saveFiles(@logoFileItem)
    end
    java_overload :processLogoFile, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :HttpRequestUtil, "org/allbinary/logic/communication/http/request/HttpRequestUtil" unless const_defined?(:HttpRequestUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileData, "org/allbinary/logic/io/file/FileData" unless const_defined?(:FileData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :LogoData, "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData" unless const_defined?(:LogoData, false)
autoload :LogoImageFileUtil, "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoImageFileUtil" unless const_defined?(:LogoImageFileUtil, false)

end; end; end; end; end; end; end; end; end

