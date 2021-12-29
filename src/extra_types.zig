const impl = @import("impl.zig");

pub fn getImplFn(comptime struct_name: []const u8, comptime fn_name: []const u8, comptime fn_type: type) ?fn_type {
    if (@hasDecl(impl, struct_name)) {
        const target_struct = @field(impl, struct_name);
        if (@hasDecl(target_struct, fn_name)) {
            return @field(target_struct, fn_name);
        }
    }

    return null;
}

pub const CGameID_t = packed struct {
    m_nAppID: u24,
    m_nType: u8,
    m_nModID: u32,
};

pub const CGameID = extern union {
    m_ulGameID: u64,
    m_gameID: u64,
};

pub const CSteamID_t = packed struct {
    m_unAccountID: u32,
    m_unAccountInstance: u20,
    m_EAccountType: u4,
    m_EUniverse: u8,
};

pub const CSteamID = packed struct {
    m_comp: CSteamID_t,
    m_unAll64Bits: u64,
};
