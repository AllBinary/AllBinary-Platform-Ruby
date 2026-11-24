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
# package views.compound

require "java/lang/JavaOverload"
# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/AbTransformer"

module ::Views; module Compound

class CompoundTransform < ::Org::Allbinary::Logic::Visual::Transform::AbTransformer
    attr_accessor :logUtil, :abeClientInformation

    def jfields_views_compound_CompoundTransform
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_compound_CompoundTransform
        self.setURIResolver(::Org::Allbinary::DataPackage::Tree::Dom::StoreUriResolver.new(self.getTransformInfoInterface(), self.getURIResolver()))
        objectConfig = ::Views::Compound::ObjectConfig::CompoundContextTransformInfoObjectConfig.new(@abeClientInformation, self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("\nObjectConfig: \n" + objectConfig.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        templateInputStream = objectConfig.createInputStream()
        self.setInputStream(templateInputStream)
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver" unless const_defined?(:BasicUriResolver, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :StoreUriResolver, "org/allbinary/data/tree/dom/StoreUriResolver" unless const_defined?(:StoreUriResolver, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Views; module Compound; module ObjectConfig; autoload :CompoundContextTransformInfoObjectConfig, "views/compound/objectConfig/CompoundContextTransformInfoObjectConfig" unless const_defined?(:CompoundContextTransformInfoObjectConfig, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

