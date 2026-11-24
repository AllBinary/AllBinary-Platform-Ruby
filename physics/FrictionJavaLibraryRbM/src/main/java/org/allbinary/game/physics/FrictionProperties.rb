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
# package org.allbinary.game.physics


module ::Org; module Allbinary; module Game; module Physics

class FrictionProperties
    

    def initialize()
    end
    

    def friction(velocityProperties, nominator)
        ::Org::Allbinary::Game::Physics::Velocity::DragVelocityBehavior.instance.reduce(velocityProperties, nominator, ::Org::Allbinary::Game::Physics::Friction::FrictionData.getFrictionDenominator())
    end
end

module ::Org; module Allbinary; module Game; module Physics; module Friction; autoload :FrictionData, "org/allbinary/game/physics/friction/FrictionData" unless const_defined?(:FrictionData, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :DragVelocityBehavior, "org/allbinary/game/physics/velocity/DragVelocityBehavior" unless const_defined?(:DragVelocityBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end

end; end; end; end

