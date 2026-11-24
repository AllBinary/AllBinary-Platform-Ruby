# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.geological.resources


module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources

class GeologicalResource
    attr_accessor :total, :initTotal

    def jfields_org_allbinary_game_layer_geological_resources_GeologicalResource
        @total = 0 unless instance_variable_defined?(:@total)
        @initTotal = nil unless instance_variable_defined?(:@initTotal)
    end
    

    def initialize(initTotal)
        jfields_org_allbinary_game_layer_geological_resources_GeologicalResource
        @initTotal = initTotal
        self.init()
    end
    

    def init()
        self.setTotal(@initTotal)
    end
    

    def add(value)
        max = 2147483647
        if self.getTotal() + value > max
            self.setTotal(max)
        else
            self.setTotal(self.getTotal() + value)
        end
    end
    

    def remove(value)
        if self.getTotal() - value < 0
            self.setTotal(0)
        else
            self.setTotal(self.getTotal() - value)
        end
    end
    

    def getTotal()
        return @total
    end
    

    def setTotal(total)
        @total = total
    end
end

end; end; end; end; end; end

