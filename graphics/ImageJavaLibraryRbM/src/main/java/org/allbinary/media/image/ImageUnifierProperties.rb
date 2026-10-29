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
# package org.allbinary.media.image


class ImageUnifierProperties
    attr_accessor :rows, :columns, :imageUnifierCell

    def initialize_fields
        @rows = nil
        @columns = nil
        @imageUnifierCell = nil
    end
    

    def initialize()
        initialize_fields
    end
    

    def getWidth()
        return self.getColumns().to_i * self.getImageUnifierCell().getWidth().to_i
    end
    

    def getHeight()
        return self.getRows().to_i * self.getImageUnifierCell().getHeight().to_i
    end
    

    def getRows()
        return @rows
    end
    

    def setRows(rows)
        @rows = rows
    end
    

    def getColumns()
        return @columns
    end
    

    def setColumns(columns)
        @columns = columns
    end
    

    def getImageUnifierCell()
        return @imageUnifierCell
    end
    

    def setImageUnifierCell(imageUnifierCell)
        @imageUnifierCell = imageUnifierCell
    end
end

require "org/allbinary/media/image/ImageUnifierCell"

