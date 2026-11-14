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
# package org.allbinary.logic.visual.transform.template.util


class TransformTemplateCustomizerUtil
    attr_accessor :logUtil, :CUSTOMIZER_NAME, :BODY_VIEWNAMEKEY, :TITLE_VIEWNAMEKEY, :GLOBALS_NEW, :GLOBALS_INSERT, :GLOBALS_DELETE, :GLOBALS_EDIT, :GLOBALS_UPDATE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @CUSTOMIZER_NAME = nil
        @BODY_VIEWNAMEKEY = nil
        @TITLE_VIEWNAMEKEY = nil
        @GLOBALS_NEW = nil
        @GLOBALS_INSERT = nil
        @GLOBALS_DELETE = nil
        @GLOBALS_EDIT = nil
        @GLOBALS_UPDATE = nil
    end
    

    def self.getInstance()
        return TransformTemplateCustomizerUtil.instance
    end
    

    def initialize()
        initialize_fields
        commonStrings = CommonStrings.getInstance()
        _SPACE = CommonSeps.getInstance().SPACE
        @CUSTOMIZER_NAME = _SPACE + (CustomizerTransformInfoData::NAME).to_s
        @BODY_VIEWNAMEKEY = _SPACE + (BodyData.getInstance().VIEWNAMEKEY).to_s
        @TITLE_VIEWNAMEKEY = _SPACE + (TitleData.getInstance().VIEWNAMEKEY).to_s
        @GLOBALS_NEW = (GLOBALS2.NEW).to_s + _SPACE
        @GLOBALS_INSERT = (commonStrings.INSERT).to_s + _SPACE
        @GLOBALS_DELETE = (commonStrings.DELETE).to_s + _SPACE
        @GLOBALS_EDIT = (GLOBALS2.EDIT).to_s + _SPACE
        @GLOBALS_UPDATE = (commonStrings.UPDATE).to_s + _SPACE
    end
    

    def getPageNameHack(viewName, storeName)
        _SPACE = CommonSeps.getInstance().SPACE
        _ONE_EMPTY_STRING_ARRAY = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put([viewName + _SPACE], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([storeName + _SPACE], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@CUSTOMIZER_NAME], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@BODY_VIEWNAMEKEY], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@TITLE_VIEWNAMEKEY], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@GLOBALS_NEW], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@GLOBALS_INSERT], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@GLOBALS_DELETE], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@GLOBALS_EDIT], _ONE_EMPTY_STRING_ARRAY)
        hashMap.put([@GLOBALS_UPDATE], _ONE_EMPTY_STRING_ARRAY)
        replace = nil
        rootViewName = replace.all(viewName)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("RootViewName for ObjectConfig: " + rootViewName, self, "getPageNameHack")
        end
        return rootViewName
    end

    def self.instance()
        TransformTemplateCustomizerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformTemplateCustomizerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformTemplateCustomizerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformTemplateCustomizerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace"
autoload :CustomizerTransformInfoData, "org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData"
autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData"
autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    TransformTemplateCustomizerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

