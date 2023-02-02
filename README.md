# Mythic Notification
Updated and maintained notify system. Inspired by Nopixel.

https://imgur.com/a/W98K5iC

Customizing

./mythic_notify/config.js:

    enabled - Enable/Disable flashing emergency notifications (default: true)
    numFlashes - Set the number of flashes (default: 5)

Installation

    YouTube Tutorial: https://www.youtube.com/watch?v=yrojMFfJeEo

    Clone or extract this repository into your ./resources/[standalone] directory.

    Replace the QBCore.Functions.Notify() function in ./qb-core/client/functions.lua:128 with the function below.

function QBCore.Functions.Notify(text, textype, length)
    if textype == "primary" then textype = "inform" end
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['mythic_notify']:DoCustomHudText(ttype, ttext, length, caption)
    else
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['mythic_notify']:DoCustomHudText(ttype, text, length)
    end
end
