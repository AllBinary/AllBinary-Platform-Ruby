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
# package org.allbinary.logic.visual.transform.generator

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Generator

class TransformsGeneratorUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_generator_TransformsGeneratorUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_generator_TransformsGeneratorUtil
    end
    

    # throws Exception
    def generateComponentsFromObjectConfig_j3(abeClientInformation, transformInfoInterface, group)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started Group: " + group, self, "generateComponentsFromObjectConfig(2)")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        result = self.generateComponentsFromObjectConfig(abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("End Group: " + group, self, "generateComponentsFromObjectConfig(2)")
        end
        return result
    end
    

    # throws Exception
    def generateComponentsFromObjectConfig_j4(abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Started Group: " + group, self, "generateComponentsFromObjectConfig()")
        end
        transformInfoObjectConfigComponentVector = transformInfoObjectConfigInterface.getTransformsGroup(group)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Processing ")
            stringBuffer.appendint(transformInfoObjectConfigComponentVector.size())
            stringBuffer.append(" Components Group: ")
            stringBuffer.append(group)
            @logUtil.putF(stringBuffer.to_s, self, "generateComponentsFromObjectConfig()")
        end
        if transformInfoObjectConfigComponentVector.size() < 1
            raise StandardError.new("No Pages Generated For Template.")
        end
        size = transformInfoObjectConfigComponentVector.size()
        (0...size).each do |index|
            transformInfoObjectConfigComponent = transformInfoObjectConfigComponentVector.get(index)
            TransformGeneratorUtil.getInstance().generate(abeClientInformation, transformInfoObjectConfigComponent, transformInfoInterface)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Done Group: " + group, self, "generateComponentsFromObjectConfig()")
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("<!-- Generated all template views successfully for View: ")
        stringBuffer.append(transformInfoInterface.getName())
        stringBuffer.append("-->")
        return stringBuffer.to_s
    end

    def generateComponentsFromObjectConfig(*java_overload_args)
        return generateComponentsFromObjectConfig_j3(*java_overload_args) if java_overload_args.length == 3
        return generateComponentsFromObjectConfig_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method generateComponentsFromObjectConfig takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        TransformsGeneratorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformsGeneratorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformsGeneratorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformsGeneratorUtil"
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
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode" unless const_defined?(:TransformInfoDomNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformGeneratorUtil, "org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil" unless const_defined?(:TransformGeneratorUtil, false)

begin
    TransformsGeneratorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

