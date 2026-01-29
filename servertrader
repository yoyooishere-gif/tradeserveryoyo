if not game:IsLoaded() then
    game.Loaded:Wait()
end

local TeleportService = game:GetService("TeleportService")
local Players        = game:GetService("Players")
local LocalPlayer    = Players.LocalPlayer

-- Target info yang kamu kasih:
local TARGET_PLACE_VERSION = 5649
local TARGET_JOBID         = "0961bd3b-8011-4bf6-9517-88d0f01e8d6c"

-- Info versi sekarang (buat dicek di output)
print("[ServerHop] Versi server sekarang :", game.PlaceVersion)
print("[ServerHop] Target server version :", TARGET_PLACE_VERSION)

-- Kalau kebetulan kamu sudah di versi / server yang sama:
if game.PlaceVersion == TARGET_PLACE_VERSION and game.JobId == TARGET_JOBID then
    warn("[ServerHop] Kamu sudah di server yang dicari (version & JobId cocok).")
    return
end

warn("[ServerHop] Coba teleport ke server target...")
local ok, err = pcall(function()
    TeleportService:TeleportToPlaceInstance(game.PlaceId, TARGET_JOBID, LocalPlayer)
end)

if not ok then
    warn("[ServerHop] Teleport ke JobId gagal:", err)
    warn("[ServerHop] Kemungkinan server sudah mati / penuh / dibatasi.")
end
