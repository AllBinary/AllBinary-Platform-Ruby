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


module ::Org; module Allbinary; module Business; module Advertisement; module Area

module AdvertisementAreaConstraintsInterface
    

    def getDisplayInBrowserContraints()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTwoDimensionContraints()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser; autoload :DisplayInBrowserContraintsInterface, "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface" unless const_defined?(:DisplayInBrowserContraintsInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraintInterface, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface" unless const_defined?(:TwoDimensionalConstraintInterface, false); end; end; end; end; end; end

end; end; end; end; end

