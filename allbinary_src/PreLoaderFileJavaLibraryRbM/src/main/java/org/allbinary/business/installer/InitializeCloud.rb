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

class InitializeCloud
    attr_accessor :logUtil

    def jfields_org_allbinary_business_installer_InitializeCloud
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_business_installer_InitializeCloud
    end
    

    def initialize(cloud, overwriteNewer, overwriteAll, current, total)
        begin
            if ::Org::Allbinary::Logic::Io::AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                stringBuffer.append(cloud)
                stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().DATA_PATH)
                path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                realPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
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
                    if nextFile.isDirectory()
                    else
                        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copyToCloud(nextFile, path, realPath, cloud, overwriteNewer, overwriteAll)
                    end
                end
                @logUtil.putF("Copied Files To Cloud", self, "initialize()")
            end
            return true
        rescue StandardError => e
            @logUtil.put("Unable to copy installer files into cloud", self, "initialize()", e)
            return false
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLOUD, "cloud/")
        const_set(:CLOUD_UPDATE, "cloudupdate/")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InitializeCloud"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLOUD, :CLOUD_UPDATE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbIOSystem, "org/allbinary/logic/io/AbIOSystem" unless const_defined?(:AbIOSystem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    InitializeCloud.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

