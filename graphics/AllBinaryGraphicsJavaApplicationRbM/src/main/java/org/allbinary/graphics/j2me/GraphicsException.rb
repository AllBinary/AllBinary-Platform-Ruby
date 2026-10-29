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
# package org.allbinary.graphics.j2me


class GraphicsException < StandardError
    attr_accessor :logUtil, :guiLog

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @guiLog = GuiLog.getInstance()
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor3(msg, obj, method)
        method(:initialize).super_method.call(msg)
        initialize_fields
        begin
            @guiLog.showDialog(msg)
            @logUtil.put(msg, obj, method, self)
        rescue StandardError => e
        end
    end
    

    def constructor3(msg, className, method)
        method(:initialize).super_method.call(msg)
        initialize_fields
        begin
            @guiLog.showDialog(msg)
            @logUtil.put(msg, className, method, self)
        rescue StandardError => e
        end
    end
end

require "org/allbinary/logic/communication/log/GuiLog"
require "org/allbinary/logic/communication/log/LogUtil"

