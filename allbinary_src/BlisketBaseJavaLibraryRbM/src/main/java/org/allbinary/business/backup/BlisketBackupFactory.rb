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
# package org.allbinary.business.backup


module ::Org; module Allbinary; module Business; module Backup

class BlisketBackupFactory
    attr_accessor :logUtil, :stringUtil, :commonStrings, :directory

    def jfields_org_allbinary_business_backup_BlisketBackupFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
    end

    def initialize
        jfields_org_allbinary_business_backup_BlisketBackupFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def getFileBasicArrayList(pathString)
        path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(pathString, @stringUtil.EMPTY_STRING)
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(path)
        return @directory.search(file, true)
    end
    

    def backup_j0()
        begin
            @logUtil.putF(@commonStrings.START, self, "backup()")
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = self.getFileBasicArrayList(backupPath)
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backup.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
        end
    end
    

    def backupViews()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupViews()")
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            storeFrontsEntity = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            viewsPath = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().VIEWS_PATH)
                stringBuffer.append(nextStore)
                viewsPath = stringBuffer.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Backup Store Views: ")
                stringBuffer.append(nextStore)
                stringBuffer.append(" from: ")
                stringBuffer.append(viewsPath)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, "backupViews()")
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(viewsPath))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupViews.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupViews()", e)
        end
    end
    

    def backupResources()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupResources()")
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            storeFrontsEntity = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            storeFrontInterface = nil
            resourcesPath = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                storeFrontInterface = storeFrontsEntity.getStoreFrontInterface(nextStore)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
                stringBuffer.append(storeFrontInterface.getCategoryPath())
                resourcesPath = stringBuffer.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Backup Store Resrouces: ")
                stringBuffer.append(nextStore)
                stringBuffer.append(" from: ")
                stringBuffer.append(resourcesPath)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, "backupResources()")
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(resourcesPath))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupResources.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupResources()", e)
        end
    end
    

    def backupJsps()
        begin
            @logUtil.putF(@commonStrings.START, self, "backupJsps()")
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH)
            backupPath = stringBuffer.to_s
            path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(backupPath, @stringUtil.EMPTY_STRING)
            fileBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            storeFrontsEntity = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            storeFrontNamesBasicArrayList = storeFrontsEntity.getStoreFrontNames()
            size = storeFrontNamesBasicArrayList.size()
            nextStore = nil
            (0...size).each do |index|
                nextStore = storeFrontNamesBasicArrayList.get(index)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Backup Store Jsps: " + nextStore, self, "backupJsps()")
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
                stringBuffer.append(nextStore)
                fileBasicArrayList.addAllList(self.getFileBasicArrayList(stringBuffer.to_s))
            end
            self.backup(fileBasicArrayList, (path.toFileSystemString()).to_s + "backupJsps.zip")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backupJsps()", e)
        end
    end
    

    def backup_j2(fileBasicArrayList, zipFile)
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("ZipFile: ")
            stringBuffer.append(zipFile)
            stringBuffer.append(" BasicArrayList: ")
            stringBuffer.appendint(fileBasicArrayList.size())
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Creating Backup Zip File: " + stringBuffer.to_s, self, "backup()")
            ::Org::Allbinary::Logic::Io::FilePackage::Zip::ZipFileUtil.getInstance().create(zipFile, fileBasicArrayList)
            @logUtil.putF("Created Backup Zip File", self, "backup()")
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
        end
    end

    def backup(*java_overload_args)
        return backup_j0(*java_overload_args) if java_overload_args.length == 0
        return backup_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method backup takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        BlisketBackupFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BlisketBackupFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BlisketBackupFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BlisketBackupFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntity, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity" unless const_defined?(:StoreFrontsEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory" unless const_defined?(:StoreFrontsEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Zip; autoload :ZipFileUtil, "org/allbinary/logic/io/file/zip/ZipFileUtil" unless const_defined?(:ZipFileUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    BlisketBackupFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

