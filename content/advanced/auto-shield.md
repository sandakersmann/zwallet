---
layout: default
title: Auto-Shield Transparent Balance
parent: Advanced Usage
weight: 1.2
---

The Auto-Shield feature automatically transfers your transparent
balance to the shielded address when it is greater than a 
configurable amount.

It runs when it detects a change in your balance and
schedules a transaction immediately. 

Set the threshold in the [settings]({{<relref "settings/auto-shield">}}).

## Remarks

- If you set a low threshold, it may make a lot of transactions
- However, if the threshold is high, your transparent balance could remain
unshielded for a long time
- Each transaction costs 0.01 mZEC (or mYEC)
- You can manually shield by tapping the button "Shield Transparent Balance"
on the Transparent Account page
