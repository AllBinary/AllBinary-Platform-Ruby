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
# package org.allbinary.logic.math.vector


module ::Org; module Allbinary; module Logic; module MathPackage; module Vector

module MathVectorInterface
    

    def getDirection()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMagnitude()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getResult()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end; end

