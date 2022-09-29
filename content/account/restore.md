---
layout: default
title: Backup Restore
parent: Accounts
weight: 30
---

## Backup

Backups are **very important** and must be taken unless you don't mind losing access to the account
and the coins it contains.

Fortunately, it is very easy to make a backup.

{{% notice info %}}
The account backup is the 24 words (in sequence) displayed on the Backup page (**seed phrase**)
{{% /notice %}}

{{< img 2022-09-29_20-12-50.png >}}

When you create a new account, the app will show you the Backup page automatically.
If you need to recall that page, open the app menu and select "Backup".

The content of the Backup page varies depending on the type of account:

- If you create a new account, the backup is the seed phrase
- If you restore the account, the backup is the information you provide
- If you make the account watch-only, the backup is the viewing key

YWallet will also show you:

- the secret key: It can be used in wallets that do not support ZIP-32 (Hierarchical Wallets)
- the viewing key: It allows watch-only accounts. Funds cannot be
spent from them

## Restore

To restore an account, go to the "Accounts" page and click on the button "+".

Follow the instructions for "Restoring an Account" 
on the page [Adding More Accounts]({{<relref "account/add#restoring-an-account">}}).