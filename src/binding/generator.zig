const std = @import("std");
const json = std.json;

const payload = @embedFile("./steam_api.json");

const str = []const u8;

const FlatInterface = struct {
    callback_structs: []CallbackStruct,
    consts: []Const,
    enums: []Enum,
    interfaces: []Interface,
    structs: []Struct,
    typedefs: []Typedef,
};

const CallbackStruct = struct {
    callback_id: u32,
    fields: []Field,
    @"struct": str,
    enums: ?[]Enum,
    consts: ?[]Const,
};

const Field = struct {
    fieldname: str,
    fieldtype: str,
    private: ?bool,
};

const Const = struct {
    constname: str,
    consttype: str,
    constval: str,
};

const Enum = struct {
    enumname: str,
    values: []Value,
    fqname: str,
};

const Value = struct {
    name: str,
    value: str,
};

const Interface = struct {
    accessors: ?[]Accessor,
    classname: str,
    fields: []Field,
    methods: []Method,
};

const Accessor = struct {
    kind: str,
    name: str,
    name_flat: str,
};

const Method = struct {
    methodname: str,
    methodname_flat: str,
    params: []Param,
    returntype: str,
};

const Param = struct {
    paramname: str,
    paramtype: str,
};

const Struct = struct {
    consts: ?[]Const,
    fields: []Field,
    methods: ?[]Method,
    @"struct": str,
};

const Typedef = struct {
    typedef: str,
    type: str,
};
