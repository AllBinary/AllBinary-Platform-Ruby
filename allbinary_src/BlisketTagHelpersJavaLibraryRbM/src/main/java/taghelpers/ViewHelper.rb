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
# package taghelpers

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/TransformInterface"

module ::Taghelpers

class ViewHelper
    include ::Org::Allbinary::Logic::Visual::Transform::TransformInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :componentInterface, :NO_TYPE

    def jfields_taghelpers_ViewHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @componentInterface = nil unless instance_variable_defined?(:@componentInterface)
        @NO_TYPE = 0
    end
    

    def initialize(hashMap, pageContext)
        jfields_taghelpers_ViewHelper
        @componentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, hashMap, pageContext)
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    java_overload :getTypeId, 0
    

    # throws Exception
    def view()
        begin
            return @componentInterface.view()
        rescue StandardError => e
            error = "Failed to View: "
            if @componentInterface != nil
                error += (@componentInterface.class.java_name).to_s
            else
                error += ("Unknown").to_s
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    # throws Exception
    def toXmlDoc()
        begin
            raise StandardError.new("Hmm: " + (@componentInterface.getTransformDocumentInterface().getDoc()).to_s)
        rescue StandardError => e
            error = "Failed to View: "
            if @componentInterface != nil
                error += (@componentInterface.class.java_name).to_s
            else
                error += ("Unknown").to_s
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :toXmlDoc, 0
    

    def getViewObject()
        return @componentInterface
    end
    java_overload :getViewObject, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return @componentInterface.getTransformInfoInterface()
    end
    java_overload :getTransformInfoInterface, 0
    

    def getTransformDocumentInterface()
        return nil
    end
    java_overload :getTransformDocumentInterface, 0
    

    def setTransformDocumentInterface(viewDocumentInterface)
        return
    end
    java_overload :setTransformDocumentInterface, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

