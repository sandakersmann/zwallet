---
layout: default
title: Miscellaneous
parent: Settings
weight: 6
---

{{< img 2022-08-23_22-29-48.png >}}

1. When checked, the app retrieves your transaction details (address & memo).
It needs to send the transaction ID to the server. Therefore, the server
can know which transactions belong to you
2. When checked, your account balance will be hidden on the account page if 
your device is tilted forward or is put down on a table
3. When checked, your shielded address is included as
a sender address in your outgoing messages. Receipients
with Ywallet can reply to you.
4. Instead of showing your messages as a list, they are
shown as a table
5. When checked, your transparent balance will be available for spending by default
6. Cold wallet transactions are exchanged between hot/cold devices by QR codes.
When disabled, they are saved in a file
7. The Anti-spam filter will skip trial decryptions of transactions that have
a large number of outputs
8. The memo included in by default
9. The maximum gap between unused transparent addresses before scanning stops

## Remarks

- Running your personal deployment of `lightwalletd` is the best way to keep
all of your information private
- Changing the setting "Protect Send" also require authentication

