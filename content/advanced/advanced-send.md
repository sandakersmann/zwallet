---
layout: default
title: Send Options
parent: Advanced Usage
weight: 1
---

{{< img 2022-09-29_22-34-52.png >}}

1. Enable/Disable rounding to 0.001 coin. If rounding is disabled,
the app uses zats: 1/100,000,000 of a coin
2. If checked, the transaction will use the balance in the transparent address too
3. **Split Notes**: The maximum amount per output note. If this is less than the amount
sent, the app will create several notes. The change is not subject to
this cap

## WARNING

- If the option to use the transparent balance is checked, the transaction
will include the *whole* transparent balance. As always, change is sent to the 
shielded address.
- Be aware that **the recipient will gain knowledge of your transparent address**.