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
# package org.allbinary.physics.movement


module ::Org; module Allbinary; module Physics; module Movement

module MovementCompositeInterface
    

    def getMovement()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Movement, "org/allbinary/physics/movement/Movement" unless const_defined?(:Movement, false)

end; end; end; end

