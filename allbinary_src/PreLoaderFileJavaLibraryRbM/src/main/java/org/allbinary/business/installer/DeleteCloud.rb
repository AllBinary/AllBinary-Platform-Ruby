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
# package org.allbinary.business.installer


module ::Org; module Allbinary; module Business; module Installer

class DeleteCloud
    attr_accessor :logUtil

    def jfields_org_allbinary_business_installer_DeleteCloud
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_business_installer_DeleteCloud
    end
    

    def delete(prePath, current, total)
        begin
            if ::Org::Allbinary::Logic::Io::AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                stringBuffer.append(prePath)
                path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(path)
                fileBasicArrayList = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance().search(file, true)
                size = fileBasicArrayList.size()
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Searched: ")
                stringBuffer.append(path.toFileSystemString())
                stringBuffer.append(" BasicArrayList: ")
                stringBuffer.appendint(size)
                portion = size / total + 1
                start = portion * current
                end_ = start + portion
                if end_ > size
                    end_ = size
                end
                stringBuffer.append(" Section: ")
                stringBuffer.appendint(start)
                stringBuffer.append(" - ")
                stringBuffer.appendint(end_)
                @logUtil.putF(stringBuffer.to_s, self, "initialize()")
                nextFile = nil
                (start...end_).each do |index|
                    nextFile = fileBasicArrayList.get(index)
                    begin
                        if nextFile.getPath().indexOf(::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::FileUploadData.getInstance().FILE) < 0
                            nextFile.delete()
                        end
                    rescue StandardError => e
                    end
                end
                @logUtil.putF("Deleted Files From Cloud", self, "initialize()")
            end
            return true
        rescue StandardError => e
            @logUtil.put("Unable to copy installer files into cloud", self, "initialize()", e)
            return false
        end
    end
end

module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :FileUploadData, "org/allbinary/logic/communication/http/file/upload/FileUploadData" unless const_defined?(:FileUploadData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbIOSystem, "org/allbinary/logic/io/AbIOSystem" unless const_defined?(:AbIOSystem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end

