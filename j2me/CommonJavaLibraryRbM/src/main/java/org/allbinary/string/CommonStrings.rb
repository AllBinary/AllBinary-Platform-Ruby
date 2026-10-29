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
# package org.allbinary.string

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class CommonStrings
    attr_accessor :EMPTY, :CREATE_IMAGE, :PLEASE_WAIT, :PLEASE_WAIT_FOR_SERVER, :PERIODS, :LOADING, :CONSTRUCTOR, :START, :END, :EXCEPTION, :EXCEPTION_LABEL, :CLEANUP, :INIT, :CLOSE, :UP, :DOWN, :LEFT, :RIGHT, :DIRECTION_NAME, :CREATE, :REMOVE, :UPDATE, :DELETE, :delete, :LOAD, :SAVE, :ADD, :DROP, :INSERT, :VISIT, :START_METHOD_NAME, :END_METHOD_NAME, :GET, :PROCESS, :GET_INSTANCE, :GET_LIST, :RUN, :START_RUNNABLE, :RUNNING, :END_RUNNABLE, :DISABLE, :ENABLE, :SUCCESS, :FAILURE, :NOT_IMPLEMENTED, :UNKNOWN, :ON_EVENT, :IS_VALID, :TOSTRING, :ADD_LISTENER, :REMOVE_LISTENER, :SIZE

    def initialize_fields
        @EMPTY = "Empty"
        @CREATE_IMAGE = "createImage"
        @PLEASE_WAIT = "Please Wait"
        @PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server..."
        @PERIODS = "..."
        @LOADING = "Loading..."
        @CONSTRUCTOR = "Constructor"
        @START = "Start"
        @END = "End"
        @EXCEPTION = "Exception"
        @EXCEPTION_LABEL = "Exception: "
        @CLEANUP = "cleanup"
        @INIT = "init"
        @CLOSE = "close"
        @UP = "up"
        @DOWN = "down"
        @LEFT = "left"
        @RIGHT = "right"
        @DIRECTION_NAME = [@DOWN, @LEFT, @RIGHT, @UP]
        @CREATE = "Create"
        @REMOVE = "Remove"
        @UPDATE = "Update"
        @DELETE = "Delete"
        @delete = "delete"
        @LOAD = "load"
        @SAVE = "save"
        @ADD = "Add"
        @DROP = "Drop"
        @INSERT = "Insert"
        @VISIT = "visit"
        @START_METHOD_NAME = @START
        @END_METHOD_NAME = "end"
        @GET = "get"
        @PROCESS = "process"
        @GET_INSTANCE = "getInstance"
        @GET_LIST = "getList"
        @RUN = "run"
        @START_RUNNABLE = "Start Runnable"
        @RUNNING = "Running"
        @END_RUNNABLE = "End Runnable"
        @DISABLE = "disable"
        @ENABLE = "enable"
        @SUCCESS = "Command Success"
        @FAILURE = "Command Failed"
        @NOT_IMPLEMENTED = "Not Implemented"
        @UNKNOWN = "Unknown"
        @ON_EVENT = "onEvent"
        @IS_VALID = "isValid"
        @TOSTRING = "toString"
        @ADD_LISTENER = "addListener"
        @REMOVE_LISTENER = "removeListener"
        @SIZE = "size"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class CommonStrings
    @@instance = CommonStrings.new()
end

