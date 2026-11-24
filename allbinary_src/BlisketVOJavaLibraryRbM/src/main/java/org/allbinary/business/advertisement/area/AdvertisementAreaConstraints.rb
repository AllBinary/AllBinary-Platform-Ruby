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
# package org.allbinary.business.advertisement.area

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Area

class AdvertisementAreaConstraints
    include AdvertisementAreaConstraintsInterface
    attr_accessor :displayInBrowserContraintsInterface, :twoDimensionConstraintsInterface

    def jfields_org_allbinary_business_advertisement_area_AdvertisementAreaConstraints
        @displayInBrowserContraintsInterface = nil unless instance_variable_defined?(:@displayInBrowserContraintsInterface)
        @twoDimensionConstraintsInterface = nil unless instance_variable_defined?(:@twoDimensionConstraintsInterface)
    end
    

    def initialize(document)
        jfields_org_allbinary_business_advertisement_area_AdvertisementAreaConstraints
        node = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(AdvertisementAreaData.getInstance().NAME, document.getChildNodes())
        @displayInBrowserContraintsInterface = ::Org::Allbinary::Logic::ControlPackage::Contraints::Display::Browser::DisplayInBrowserContraints.new(node)
        @twoDimensionConstraintsInterface = ::Org::Allbinary::Logic::ControlPackage::Contraints::Size::TwoDimensionalConstraint.new(node)
    end
    

    def setDisplayInBrowserContraints(displayInBrowserContraintsInterface)
        @displayInBrowserContraintsInterface = displayInBrowserContraintsInterface
    end
    java_overload :setDisplayInBrowserContraints, 1
    

    def getTwoDimensionContraints_j1(twoDimensionConstraintsInterface)
        @twoDimensionConstraintsInterface = twoDimensionConstraintsInterface
    end
    

    def getDisplayInBrowserContraints()
        return @displayInBrowserContraintsInterface
    end
    java_overload :getDisplayInBrowserContraints, 0
    

    def getTwoDimensionContraints_j0()
        return @twoDimensionConstraintsInterface
    end

    def getTwoDimensionContraints(*java_overload_args)
        return getTwoDimensionContraints_j1(*java_overload_args) if java_overload_args.length == 1
        return getTwoDimensionContraints_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method getTwoDimensionContraints takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser; autoload :DisplayInBrowserContraints, "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraints" unless const_defined?(:DisplayInBrowserContraints, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser; autoload :DisplayInBrowserContraintsInterface, "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface" unless const_defined?(:DisplayInBrowserContraintsInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraint, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraint" unless const_defined?(:TwoDimensionalConstraint, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraintInterface, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface" unless const_defined?(:TwoDimensionalConstraintInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :AdvertisementAreaData, "org/allbinary/business/advertisement/area/AdvertisementAreaData" unless const_defined?(:AdvertisementAreaData, false)

end; end; end; end; end

