--==[ VersionAPI – Cek Server Version Dalam Range ]==--

local VersionAPI = {}

-- 🛠 Konfigurasi default range
VersionAPI.MinVersion = 5649
VersionAPI.MaxVersion = 5660

-- Ambil versi server sekarang
function VersionAPI.GetCurrentVersion()
    local ok, ver = pcall(function()
        return tonumber(game.PlaceVersion)
    end)
    if ok and ver then
        return ver
    end
    return 0
end

-- Cek apakah versi dalam range
function VersionAPI.IsInRange(minV, maxV)
    minV = minV or VersionAPI.MinVersion
    maxV = maxV or VersionAPI.MaxVersion

    local ver = VersionAPI.GetCurrentVersion()
    return ver >= minV and ver <= maxV, ver
end

return VersionAPI
