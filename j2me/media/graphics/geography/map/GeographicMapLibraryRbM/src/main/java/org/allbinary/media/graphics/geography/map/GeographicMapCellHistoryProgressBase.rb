# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.media.graphics.geography.map


class GeographicMapCellHistoryProgressBase
    

    def self.getInstance()
        return GeographicMapCellHistoryProgressBase.instance
    end
    

    def initialize()
    end
    

    def init()
        raise RuntimeError.new()
    end
    

    def isAnyProgress()
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GeographicMapCellHistoryProgressBase
    @@instance = GeographicMapCellHistoryProgressBase.new()
end

