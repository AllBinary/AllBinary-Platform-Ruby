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


class GeologicalResource
    attr_accessor :total, :initTotal

    def initialize_fields
        @total = 0
        @initTotal = nil
    end
    

    def initialize(initTotal)
        initialize_fields
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

