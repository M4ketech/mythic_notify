# Mythic Notification
Updated and maintained notify system. Inspired by Nopixel.

https://imgur.com/a/W98K5iC

## Use

Client Side:
```lua
exports['mythic_notify']:SendAlert('type', 'message')
```
Server Side: 
```lua
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'message'})
```

### Notification Styles
* Inform - 'inform'
* Error - 'error'
* Success - 'success'
* Warning - 'warn'
* Help - 'help'

### Client-Side Functions (All Exported)
* SendShortAlert( type, text, style ) - Displays 1000ms (1 Second)
* SendAlert ( type, text, style ) - Displays For 2500ms (2.5 Seconds)
* SendLongAlert ( type, text, style ) - Displays For 5000ms (5 Seconds)

Notify System will be updated every week
