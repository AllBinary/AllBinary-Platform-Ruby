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
# package views.admin.customizers

require "java/lang/JavaOverload"
# require "java/util/Arrays"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Customizers

class CustomizersView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :customizersVector

    def jfields_views_admin_customizers_CustomizersView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @customizersVector = nil unless instance_variable_defined?(:@customizersVector)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_customizers_CustomizersView
        @customizersVector = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance().getNames(self.getWeblisketSession().getStoreName())
    end
    

    def toXmlNode(document)
        begin
            node = document.createElement(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::TransformTemplateCustomizersData::NAME)
            unsortedCustomizerViewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            size = @customizersVector.size()
            (0...size).each do |index|
                viewName = @customizersVector.get(index)
                if (viewName.index(::Org::Allbinary::Logic::Visual::Transform::Info::CustomizerTransformInfoData::NAME) || -1) > 0 && (viewName.index(::Org::Allbinary::Globals::GLOBALS2::EDIT) || -1) > 0 && (viewName.index(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Bodies::BodyData.getInstance().VIEWNAMEKEY) || -1) > 0 && (viewName.index(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().VIEWNAMEKEY) || -1) > 0
                    unsortedCustomizerViewVector.add(viewName)
                end
            end
            objectArray = unsortedCustomizerViewVector.toArray()
            Arrays.sort(objectArray, ::Org::Allbinary::Logic::ControlPackage::Sort::StringComparator.new())
            (0...objectArray.length).each do |index|
                viewName = objectArray[index]
                viewNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::TransformTemplateCustomizerData::NAME, viewName, ::Org::Allbinary::Logic::Visual::Transform::Template::Util::TransformTemplateCustomizerUtil.getInstance().getPageNameHack(viewName, self.getWeblisketSession().getStoreName()))
                node.appendChild(viewNameNode)
            end
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
    java_overload :toXmlNode, 1
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return CustomizersView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Sort; autoload :StringComparator, "org/allbinary/logic/control/sort/StringComparator" unless const_defined?(:StringComparator, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :CustomizerTransformInfoData, "org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData" unless const_defined?(:CustomizerTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; autoload :TransformTemplateCustomizerData, "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizerData" unless const_defined?(:TransformTemplateCustomizerData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; autoload :TransformTemplateCustomizersData, "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizersData" unless const_defined?(:TransformTemplateCustomizersData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies; autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData" unless const_defined?(:BodyData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData" unless const_defined?(:TitleData, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Util; autoload :TransformTemplateCustomizerUtil, "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil" unless const_defined?(:TransformTemplateCustomizerUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

