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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.logo


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Logo

class LogoImageFileUtil
    attr_accessor :directory, :fileName, :imageFileAbPath

    def jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoImageFileUtil
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
        @fileName = nil unless instance_variable_defined?(:@fileName)
        @imageFileAbPath = nil unless instance_variable_defined?(:@imageFileAbPath)
    end
    

    def initialize(imageAbPath, imageFile)
        jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_logo_LogoImageFileUtil
        @fileName = imageFile
        @imageFileAbPath = imageAbPath
    end
    

    # throws Exception
    def saveFiles(fileItem)
        if @fileName == nil
            raise StandardError.new("Image File Name Was Null")
        end
        if !@directory.create(@imageFileAbPath)
            raise StandardError.new("Unable to save file to non creatable directory")
        end
        originalImageFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(@imageFileAbPath.to_s + @fileName)
        originalImageFile.createNewFile()
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().write(::Java::Io::ByteArrayInputStream.new(fileItem.get()), originalImageFile)
    end
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end

end; end; end; end; end; end; end; end; end

