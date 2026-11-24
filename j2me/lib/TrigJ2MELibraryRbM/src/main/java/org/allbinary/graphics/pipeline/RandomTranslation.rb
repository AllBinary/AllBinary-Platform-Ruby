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
# package org.allbinary.graphics.pipeline


module ::Org; module Allbinary; module Graphics; module Pipeline

class RandomTranslation
    

    # throws Exception
    def self.getInstance(vector, howMuch)
        myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
        x = -myRandomFactory.getNextInt(howMuch)
        y = myRandomFactory.getNextInt(howMuch)
        graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()
    end
end

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false)

end; end; end; end

