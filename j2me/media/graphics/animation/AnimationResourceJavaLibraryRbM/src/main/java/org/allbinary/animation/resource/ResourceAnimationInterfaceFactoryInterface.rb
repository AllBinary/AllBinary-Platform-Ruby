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
# package org.allbinary.animation.resource


module ::Org; module Allbinary; module Animation; module Resource

module ResourceAnimationInterfaceFactoryInterface
    

    # throws Exception
    def getBasicAnimationInterfaceFactoryInstance(resource)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Animation; autoload :BasicAnimationInterfaceFactoryInterface, "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface" unless const_defined?(:BasicAnimationInterfaceFactoryInterface, false); end; end; end

end; end; end; end

