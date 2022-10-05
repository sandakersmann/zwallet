---
title: Synchronization
weight: 25
---

{{%img 2022-07-22_16-18-02.png %}}

Synchronization (Catchup) will automatically start when YWallet
detects that it does not have the latest block data.

{{%notice note%}}
Synchronization is complete when *only* the block height number is 
displayed above the QR code.
{{%/notice%}}

You can also manually trigger a rescan through the application menu.

## Statistics

During Rescan or Catchup, the blockheight will cycle between
the following information:
- current height / latest height
{{%img 2022-09-29_21-06-18.png %}}

- synchronization % (CATCHUP for incremental 
sync and RESCAN for full scan)
{{%img 2022-09-29_21-05-16.png %}}

- number of blocks remaining to process
{{%img 2022-09-29_21-05-25.png %}}

- timestamp of latest block processed
{{%img 2022-09-29_21-05-34.png %}}

- ETA (Estimated Time Remaining to complete the scan)
{{%img 2022-09-29_21-05-43.png %}}

- Bytes downloaded from the server
{{%img 2022-09-29_21-05-51.png %}}

- Number of transaction outputs decrypted
{{%img 2022-09-29_21-05-59.png %}}


{{%notice note%}}
Tapping on the display will alternate between cycling and
a fixed display.
{{%/notice%}}

## Remarks

- You can use the "Bytes downloaded from the server" statistics
to monitor the status of the remote server. If there is no
progress for more than a minute, it is a good indication that
the server is not responding.

- "Number of transaction outputs decrypted" shows how many
trial decryption YWallet has done so far. Synchronization
speed is significantly reduced by trial decryptions.

- If these two statistics reset to 0, the server has disconnected.
YWallet will automatically reconnect but there may be some network 
issue.

## Pause/Resume

The synchronization can be canceled/paused through the Application Menu.
When paused, automatic catchup is also disabled.
To resume the scan, either tap on the message or choose the 
"Resume Scan" option in the application menu.

{{%img 2022-07-22_16-32-42.png %}}

{{%notice note%}}
Pausing the synchronization is not immediate. YWallet will not
download more data from the server but will complete processing
the data it currently has.
{{%/notice%}}

## Background Sync (Android)

Starting from version 1.2.15, once started, synchronization
continues as a service.

You can switch to other apps or even lock your device, and
YWallet will synchronize in the background.

There will be a notification message in the notification tray
with a progress indicator.

- Background Sync is only available on Android devices.
- On iOS, due to platform restrictions, the application must remain
in the foreground.
- On desktop, Synchronization always happens concurrently with other programs.

{{% notice warning %}}
Some Android manufacturers prefer battery life over proper 
functionality of your apps.
Refer to [Don’t kill app](https://dontkillmyapp.com/) for more information.

{{% /notice %}}

{{< youtube C_6VTUBhhBY >}}

<link href="/youtube.css" rel=stylesheet integrity>
<script src="/youtube.js"></script>
