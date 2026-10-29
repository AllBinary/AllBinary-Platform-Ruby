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

# require "java/io/ByteArrayInputStream"
# require "java/io/InputStream"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator"

class StoreFileGenerator < TransformInfoObjectConfigGenerator
    attr_accessor :logUtil, :commonStrings, :output, :fileAbPath, :file

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @output = nil
        @fileAbPath = nil
        @file = nil
    end
    

    def initialize(transformInfoInterface)
        super()
        initialize_fields
        httpTransformInfoInterface = transformInfoInterface
        weblisketSession = WeblisketSession.new(httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getWebappPath())
        stringBuffer.append(weblisketSession.getStoreName())
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        abPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        fileName = httpTransformInfoInterface.getPropertiesHashMap().get(InputOutputTypeData.getInstance().FILE)
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(fileName)
            transformInfoHttpStoreInterface = transformInfoInterface
            fileName = transformInfoInterface.getName().substring(transformInfoHttpStoreInterface.getStoreName().length() + 1)
            outputMappingHashMap = StdUtil.getInstance().createHashMap()
            outputMappingHashMap.put(TransformInfosData.getInstance().PREVIEW, "Preview")
            outputMappingHashMap.put(TransformInfosData.getInstance().SMALL_PREVIEW, "SmallPreview")
            outputMappingHashMap.put(CommonSeps.getInstance().SPACE, StringUtil.getInstance().EMPTY_STRING)
            replace = Replace.new(outputMappingHashMap)
            fileName = replace.all(fileName)
        end
        if stringValidationUtil.isEmpty(fileName)
            raise StandardError.new("TransformInfoObjectConfigGenerator FileName Not Specified")
        end
        tempOutput = httpTransformInfoInterface.getPropertiesHashMap().get(InputOutputTypeData.getInstance().NAME)
        if stringValidationUtil.isEmpty(tempOutput)
            tempOutput = InputOutputTypeData.getInstance().DEFAULT
        end
        @output = tempOutput
        if stringValidationUtil.isEmpty(@output)
            raise StandardError.new("TransformInfoObjectConfigGenerator Output=extension Not Specified")
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append(fileName)
        stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
        stringBuffer.append(@output)
        abPath = AbPath.new(abPath.to_s, stringBuffer.to_s)
        @fileAbPath = abPath
        @file = AbFile.createAbFileFromAbPath(@fileAbPath)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("File: " + @fileAbPath.to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    def process(input)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Processing", self, @commonStrings.PROCESS)
        end
        if !@file.exists()
            @file.createNewFile()
        end
        if @file.exists()
            inputStream = ByteArrayInputStream.new(input.bytes)
            FileUtil.getInstance().write(inputStream, @file)
        else
            raise StandardError.new("Could Not Create: " + @fileAbPath.to_s)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Processed", self, @commonStrings.PROCESS)
        end
        return StringUtil.getInstance().EMPTY_STRING
    end
end

require "java/util/HashMap"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/InputOutputTypeData"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfosData"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

