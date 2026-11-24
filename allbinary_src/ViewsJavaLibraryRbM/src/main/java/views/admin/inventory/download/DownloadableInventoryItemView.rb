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
# package views.admin.inventory.download

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Inventory; module Download

class DownloadableInventoryItemView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::Communication::Http::Request::RequestMapInterface
    attr_accessor :logUtil, :basicItemData, :request, :id, :itemInterface, :downloadableItem, :requestHashMap

    def jfields_views_admin_inventory_download_DownloadableInventoryItemView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @id = nil unless instance_variable_defined?(:@id)
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
        @downloadableItem = nil unless instance_variable_defined?(:@downloadableItem)
        @requestHashMap = nil unless instance_variable_defined?(:@requestHashMap)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_views_admin_inventory_download_DownloadableInventoryItemView_1(*args)
        when 2 then jnew_views_admin_inventory_download_DownloadableInventoryItemView_2(*args)
        else raise ArgumentError, "No constructor of DownloadableInventoryItemView takes #{args.length} arguments"
        end
    end
    

    def jnew_views_admin_inventory_download_DownloadableInventoryItemView_1(transformInfoInterface)
        DownloadableInventoryItemView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_admin_inventory_download_DownloadableInventoryItemView
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    def jnew_views_admin_inventory_download_DownloadableInventoryItemView_2(transformInfoInterface, empty)
        DownloadableInventoryItemView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_admin_inventory_download_DownloadableInventoryItemView
        @request = self.getPageContext().getRequest()
    end
    

    def getTypeId()
        return DownloadableInventoryItemView::TYPE_ID
    end
    java_overload :getTypeId, 0
    

    # throws Exception
    def getFormData()
        self.setRequestHashMap(::Org::Allbinary::Logic::Communication::Http::Request::MultipartRequestParams.new(@request).toHashMap())
        @id = self.getRequestHashMap().get(@basicItemData.ID)
    end
    java_overload :getFormData, 0
    

    def addDomNodeInterfaces()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        if @downloadableItem != nil
            vector.add(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItemView.new(@downloadableItem))
        end
        self.addDomNodeInterface(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(@itemInterface, vector))
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return DownloadableInventoryItemView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    # throws Exception
    def processFile(fileItem)
        fileName = fileItem.getName()
        fullPath = self.getItemFilePath()
        itemResourceFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullPath)
        itemResourceFile.mkdir()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        @logUtil.putF("FileName: " + fileName, self, "processFile()")
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
        @logUtil.putF(file.getPath(), self, "processFiles()")
        file.createNewFile()
        byteArray = fileItem.get()
        ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().write(::Java::Io::ByteArrayInputStream.new(byteArray), file)
    end
    java_overload :processFile, 1
    

    # throws Exception
    def unzip(fileItem)
        fileName = fileItem.getName()
        fullPath = self.getItemFilePath()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        @logUtil.putF("FileName: " + fileName, self, "unzip()")
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(stringBuffer.to_s)
        @logUtil.putF(file.getPath(), self, "unzip()")
        ::Org::Allbinary::Logic::Io::FilePackage::Zip::ZipFileUtil.getInstance().unzip(fullPath, file, fileName)
    end
    java_overload :unzip, 1
    

    def getItemFilePath()
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
        filePathData = ::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
        stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
        stringBuffer.append(@itemInterface.getCategory())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        stringBuffer.append(@itemInterface.getId())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        stringBuffer.append(@downloadableItem.getId())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        return stringBuffer.to_s
    end
    java_overload :getItemFilePath, 0
    

    def setRequestHashMap(requestHashMap)
        @requestHashMap = requestHashMap
    end
    java_overload :setRequestHashMap, 1
    

    def getRequestHashMap()
        return @requestHashMap
    end
    java_overload :getRequestHashMap, 0
    

    def getDownloadableItem()
        return @downloadableItem
    end
    java_overload :getDownloadableItem, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TYPE_ID, 11)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DownloadableInventoryItemView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TYPE_ID].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItemView, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView" unless const_defined?(:DownloadableItemView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :MultipartRequestParams, "org/allbinary/logic/communication/http/request/MultipartRequestParams" unless const_defined?(:MultipartRequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Zip; autoload :ZipFileUtil, "org/allbinary/logic/io/file/zip/ZipFileUtil" unless const_defined?(:ZipFileUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    DownloadableInventoryItemView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

