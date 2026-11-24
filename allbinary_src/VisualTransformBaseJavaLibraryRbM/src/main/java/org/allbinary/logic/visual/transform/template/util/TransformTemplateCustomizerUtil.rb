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


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Util

class TransformTemplateCustomizerUtil
    attr_accessor :logUtil, :CUSTOMIZER_NAME, :BODY_VIEWNAMEKEY, :TITLE_VIEWNAMEKEY, :GLOBALS_NEW, :GLOBALS_INSERT, :GLOBALS_DELETE, :GLOBALS_EDIT, :GLOBALS_UPDATE

    def jfields_org_allbinary_logic_visual_transform_template_util_TransformTemplateCustomizerUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @CUSTOMIZER_NAME = nil unless instance_variable_defined?(:@CUSTOMIZER_NAME)
        @BODY_VIEWNAMEKEY = nil unless instance_variable_defined?(:@BODY_VIEWNAMEKEY)
        @TITLE_VIEWNAMEKEY = nil unless instance_variable_defined?(:@TITLE_VIEWNAMEKEY)
        @GLOBALS_NEW = nil unless instance_variable_defined?(:@GLOBALS_NEW)
        @GLOBALS_INSERT = nil unless instance_variable_defined?(:@GLOBALS_INSERT)
        @GLOBALS_DELETE = nil unless instance_variable_defined?(:@GLOBALS_DELETE)
        @GLOBALS_EDIT = nil unless instance_variable_defined?(:@GLOBALS_EDIT)
        @GLOBALS_UPDATE = nil unless instance_variable_defined?(:@GLOBALS_UPDATE)
    end
    

    def self.getInstance()
        return TransformTemplateCustomizerUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_template_util_TransformTemplateCustomizerUtil
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _SPACE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
        @CUSTOMIZER_NAME = _SPACE + (::Org::Allbinary::Logic::Visual::Transform::Info::CustomizerTransformInfoData::NAME).to_s
        @BODY_VIEWNAMEKEY = _SPACE + (::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().VIEWNAMEKEY).to_s
        @TITLE_VIEWNAMEKEY = _SPACE + (::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().VIEWNAMEKEY).to_s
        @GLOBALS_NEW = (::Org::Allbinary::Globals::GLOBALS2::NEW).to_s + _SPACE
        @GLOBALS_INSERT = (commonStrings.INSERT).to_s + _SPACE
        @GLOBALS_DELETE = (commonStrings.DELETE).to_s + _SPACE
        @GLOBALS_EDIT = (::Org::Allbinary::Globals::GLOBALS2::EDIT).to_s + _SPACE
        @GLOBALS_UPDATE = (commonStrings.UPDATE).to_s + _SPACE
    end
    

    def getPageNameHack(viewName, storeName)
        _SPACE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
        _ONE_EMPTY_STRING_ARRAY = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :CustomizerTransformInfoData, "org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData" unless const_defined?(:CustomizerTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies; autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData" unless const_defined?(:BodyData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData" unless const_defined?(:TitleData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    TransformTemplateCustomizerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

