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

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Graphics; module J2me

class GraphicsException < StandardError
    attr_accessor :logUtil, :guiLog

    def jfields_org_allbinary_graphics_j2me_GraphicsException
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @guiLog = ::Org::Allbinary::Logic::Communication::Log::GuiLog.getInstance()
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_graphics_j2me_GraphicsException_3(*args)
        else raise ArgumentError, "No constructor of GraphicsException takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_graphics_j2me_GraphicsException_3(*java_overload_args)
        return jnew_org_allbinary_graphics_j2me_GraphicsException_3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return jnew_org_allbinary_graphics_j2me_GraphicsException_3_1(*java_overload_args)
    end
    

    def jnew_org_allbinary_graphics_j2me_GraphicsException_3_1(msg, obj, method)
        GraphicsException.superclass.instance_method(:initialize).bind(self).call(msg)
        jfields_org_allbinary_graphics_j2me_GraphicsException
        begin
            @guiLog.showDialog(msg)
            @logUtil.put(msg, obj, method, self)
        rescue StandardError => e
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_GraphicsException_3_2(msg, className, method)
        GraphicsException.superclass.instance_method(:initialize).bind(self).call(msg)
        jfields_org_allbinary_graphics_j2me_GraphicsException
        begin
            @guiLog.showDialog(msg)
            @logUtil.put(msg, className, method, self)
        rescue StandardError => e
        end
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :GuiLog, "org/allbinary/logic/communication/log/GuiLog" unless const_defined?(:GuiLog, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end

