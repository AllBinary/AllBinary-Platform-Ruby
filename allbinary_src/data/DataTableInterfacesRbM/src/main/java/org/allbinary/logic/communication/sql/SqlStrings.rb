# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.communication.sql


class SqlStrings
    attr_accessor :CREATE_DATABASE, :DROP_TABLE, :CREATE_TABLE, :START, :SELECT, :FROM, :SELECT_ALL, :WHERE, :AND, :UPDATE, :SET, :SELECT_ALL_FROM, :DELETE, :LIKE_QUOTE, :INSERT_INTO, :VALUES, :ORDER_BY, :COUNT, :ASC, :DESC, :PRIMARY_KEY, :END, :EQUAL_QUOTE, :CLOSE_QUOTE, :EQUAL_QUOTE_NO_SPACE, :ESCAPE, :DOUBLE_ESCAPE, :MORE_THAN_QUOTE, :LESS_THAN_QUOTE, :SINGLE_QUOTE_COMMA_SEP, :ID, :SQL_STATEMENT_LABEL, :COLUMN_VALUE, :CREATE_RETURN, :FIELD_VALUE

    def initialize_fields
        @CREATE_DATABASE = "CREATE DATABASE "
        @DROP_TABLE = "DROP TABLE "
        @CREATE_TABLE = "CREATE TABLE "
        @START = " ("
        @SELECT = "SELECT "
        @FROM = " FROM "
        @SELECT_ALL = "SELECT *"
        @WHERE = " WHERE "
        @AND = " AND "
        @UPDATE = "UPDATE "
        @SET = " SET "
        @SELECT_ALL_FROM = @SELECT_ALL + @FROM
        @DELETE = "DELETE"
        @LIKE_QUOTE = " LIKE \""
        @INSERT_INTO = "INSERT INTO "
        @VALUES = " VALUES ('"
        @ORDER_BY = "ORDER BY"
        @COUNT = "COUNT("
        @ASC = "ASC"
        @DESC = "DESC"
        @PRIMARY_KEY = "PRIMARY KEY("
        @END = ") )"
        @EQUAL_QUOTE = " = \""
        @CLOSE_QUOTE = CommonSeps.getInstance().QUOTE
        @EQUAL_QUOTE_NO_SPACE = "=\""
        @ESCAPE = "\\"
        @DOUBLE_ESCAPE = "\\\\"
        @MORE_THAN_QUOTE = " > \""
        @LESS_THAN_QUOTE = " < \""
        @SINGLE_QUOTE_COMMA_SEP = "','"
        @ID = "ID"
        @SQL_STATEMENT_LABEL = "SQL Statement: "
        @COLUMN_VALUE = "\nColumn Value: "
        @CREATE_RETURN = " Created Successfully"
        @FIELD_VALUE = "\nField Value: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SqlStrings.instance
    end

    def self.instance()
        SqlStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SqlStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SqlStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SqlStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    SqlStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

