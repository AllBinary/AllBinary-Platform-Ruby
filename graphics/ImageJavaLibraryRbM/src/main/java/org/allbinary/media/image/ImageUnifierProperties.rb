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


module ::Org; module Allbinary; module Media; module Image

class ImageUnifierProperties
    attr_accessor :rows, :columns, :imageUnifierCell

    def jfields_org_allbinary_media_image_ImageUnifierProperties
        @rows = nil unless instance_variable_defined?(:@rows)
        @columns = nil unless instance_variable_defined?(:@columns)
        @imageUnifierCell = nil unless instance_variable_defined?(:@imageUnifierCell)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageUnifierProperties
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

autoload :ImageUnifierCell, "org/allbinary/media/image/ImageUnifierCell" unless const_defined?(:ImageUnifierCell, false)

end; end; end; end

