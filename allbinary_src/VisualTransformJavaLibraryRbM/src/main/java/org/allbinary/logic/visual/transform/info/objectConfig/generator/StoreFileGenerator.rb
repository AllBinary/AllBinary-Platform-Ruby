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
# package org.allbinary.logic.visual.transform.info.objectConfig.generator

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator

class StoreFileGenerator < TransformInfoObjectConfigGenerator
    attr_accessor :logUtil, :commonStrings, :output, :fileAbPath, :file

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_StoreFileGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @output = nil unless instance_variable_defined?(:@output)
        @fileAbPath = nil unless instance_variable_defined?(:@fileAbPath)
        @file = nil unless instance_variable_defined?(:@file)
    end
    

    def initialize(transformInfoInterface)
        super()
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_StoreFileGenerator
        httpTransformInfoInterface = transformInfoInterface
        weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
        stringBuffer.append(weblisketSession.getStoreName())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        fileName = httpTransformInfoInterface.getPropertiesHashMap().get(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().FILE)
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(fileName)
            transformInfoHttpStoreInterface = transformInfoInterface
            fileName = transformInfoInterface.getName().substring(transformInfoHttpStoreInterface.getStoreName().length() + 1)
            outputMappingHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            outputMappingHashMap.put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().PREVIEW, "Preview")
            outputMappingHashMap.put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().SMALL_PREVIEW, "SmallPreview")
            outputMappingHashMap.put(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            replace = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(outputMappingHashMap)
            fileName = replace.all(fileName)
        end
        if stringValidationUtil.isEmpty(fileName)
            raise StandardError.new("TransformInfoObjectConfigGenerator FileName Not Specified")
        end
        tempOutput = httpTransformInfoInterface.getPropertiesHashMap().get(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().NAME)
        if stringValidationUtil.isEmpty(tempOutput)
            tempOutput = ::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().DEFAULT
        end
        @output = tempOutput
        if stringValidationUtil.isEmpty(@output)
            raise StandardError.new("TransformInfoObjectConfigGenerator Output=extension Not Specified")
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(fileName)
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(@output)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(abPath.to_s, stringBuffer.to_s)
        @fileAbPath = abPath
        @file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(@fileAbPath)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("File: " + @fileAbPath.to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def process(input)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Processing", self, @commonStrings.PROCESS)
        end
        if !@file.exists()
            @file.createNewFile()
        end
        if @file.exists()
            inputStream = ::Java::Io::ByteArrayInputStream.new(input.bytes)
            ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().write(inputStream, @file)
        else
            raise StandardError.new("Could Not Create: " + @fileAbPath.to_s)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Processed", self, @commonStrings.PROCESS)
        end
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :process, 1
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpStoreInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface" unless const_defined?(:TransformInfoHttpStoreInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData" unless const_defined?(:TransformInfosData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

