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
# package org.allbinary.image

require "java/lang/JavaOverload"
# require "java/awt/EventQueue"

module ::Org; module Allbinary; module Image

class ImageTool
    attr_accessor :logUtil

    def jfields_org_allbinary_image_ImageTool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_image_ImageTool
    end
    

    def self.main(args)
        EventQueue.invokeLater(Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
            include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                begin
                    logUtil.putF(commonStrings.START, self, commonStrings.RUN)
                    ::Org::Allbinary::Image::Gui::ImageToolJFrame.new().setVisible(true)
                rescue StandardError => e
                    logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new())
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Org; module Allbinary; module Image; module Gui; autoload :ImageToolJFrame, "org/allbinary/image/gui/ImageToolJFrame" unless const_defined?(:ImageToolJFrame, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end

