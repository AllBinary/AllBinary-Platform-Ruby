# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/form/CustomScreen"

class ABCustomForm < CustomScreen
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize(title, items, backgroundBasicColor, foregroundBasicColor)
        super()
        initialize_fields
    end
    

    def getAllitems()
        return Array.new(0, nil)
    end
    

    def size()
        return 0
    end
    

    def setSelectedIndex(index)
    end
    

    def getSelectedIndex()
        return 0
    end
    

    def deleteAll()
    end
    

    def delete(itemNum)
    end
    

    def append(item)
        return -1
    end
    

    def insert(itemNum, item)
    end
    

    def set(itemNum, item)
    end
    

    def get(itemNum)
        return ABCustomItem.getNullInstance()
    end
    

    def getWidth()
        raise RuntimeError.new()
    end
    

    def paint(graphics)
    end
    

    def getTitle()
        return StringUtil.getInstance().EMPTY_STRING
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

