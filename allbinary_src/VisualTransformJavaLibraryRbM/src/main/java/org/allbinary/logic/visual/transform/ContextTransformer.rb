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
# package org.allbinary.logic.visual.transform

require "java/lang/JavaOverload"
# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/BasicTransformer"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

class ContextTransformer < BasicTransformer
    

    def initialize(abeClientInformation, transformInfoInterface)
        super(abeClientInformation, transformInfoInterface)
        self.setURIResolver(::Org::Allbinary::DataPackage::Tree::Dom::ContextUriResolver.new(self.getURIResolver()))
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver" unless const_defined?(:BasicUriResolver, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ContextUriResolver, "org/allbinary/data/tree/dom/ContextUriResolver" unless const_defined?(:ContextUriResolver, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end

end; end; end; end; end

