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
# package views.business.context.modules.storefront.customizer

require "java/lang/JavaClass"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer

class StoreCustomizerComponentUtil
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_StoreCustomizerComponentUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return StoreCustomizerComponentUtil.instance
    end
    

    def initialize()
        jfields_views_business_context_modules_storefront_customizer_StoreCustomizerComponentUtil
    end
    

    # throws Exception
    def generate_j2(abeClientInformation, transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Generating Modified Views For: " + transformInfoInterface.getName(), self, "generateModifiedViews()")
        end
        customizerUtil = CustomizerUtil.getInstance()
        allCustomizedViews = customizerUtil.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        size = allCustomizedViews.size()
        (0...size).each do |index|
            nextTransformInfoInterface = allCustomizedViews.get(index)
            allViewsToBeModified = customizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize(transformInfoInterface, nextTransformInfoInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View or component that was modified by a Customizer: " + nextTransformInfoInterface.getName(), self, "generateModifiedViews()")
            end
            self.generate(abeClientInformation, transformInfoInterface, allViewsToBeModified)
        end
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def generate_j3(abeClientInformation, transformInfoInterface, allViewsToBeModifiedVector)
        customizerUtil = CustomizerUtil.getInstance()
        size = allViewsToBeModifiedVector.size()
        (0...size).each do |index|
            nextTransformInfoInterface = allViewsToBeModifiedVector.get(index)
            specifiedTransformInfoInterface = customizerUtil.getTransformInfoInterfaceToCustomize(transformInfoInterface, nextTransformInfoInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Retrieved: " + specifiedTransformInfoInterface.getName(), self, "generateModifiedViews()")
            end
            ::Org::Allbinary::Logic::Visual::Transform::Generator::TransformGeneratorUtil.getInstance().generate(abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface)
        end
    end

    def generate(*java_overload_args)
        return generate_j2(*java_overload_args) if java_overload_args.length == 2
        return generate_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method generate takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        StoreCustomizerComponentUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreCustomizerComponentUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreCustomizerComponentUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreCustomizerComponentUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Generator; autoload :TransformGeneratorUtil, "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil" unless const_defined?(:TransformGeneratorUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :CustomizerUtil, "views/business/context/modules/storefront/customizer/CustomizerUtil" unless const_defined?(:CustomizerUtil, false)

begin
    StoreCustomizerComponentUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

