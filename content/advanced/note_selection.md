---
title: Note Selection
weight: 30
draft: true
---

Note Selection is the process of choosing unspent transaction outputs (UTXO) from your wallet to make a transaction.

A set of addresses and amounts defines the recipients of the transaction.
On the sender side, his wallet tracks a set of UTXOs. They are either transparent, sapling, or orchard UTXO.

Our goal is the choose one of many of these UTXOs and include them in the transaction so that:
The total amount of our UTXO is greater or equal to the total amount that our recipients need,
We minimize privacy leakage.

The first condition is relatively easy to meet as long as we have enough funds in our wallet. However, the second condition is more difficult to fulfill.

Let's start by understanding what information is exposed in a transaction if we are not careful.

By definition, transparent addresses and UTXO are public. Using them exposes the sender/recipient addresses and the amount transferred.

On the other hand, shielded addresses and UTXO are hidden. But the amount exchanged may be known in some cases. A transaction contains a transparent, a sapling, and an orchard part.

In each part, we have inputs and outputs.
- In the transparent part, inputs and outputs are in clear form.
- In the sapling part, inputs and outputs are encrypted.
- In the orchard part, inputs and outputs are encrypted and mixed into actions.

However, regardless of the encryption, the *net* change is available in clear form. For example, if the transaction pays a sapling recipient 100 ZEC using 10 ZEC in sapling UTXOs, it shows a net change of 90 ZEC in the sapling part.
This information is sometimes referred to as the turnstile. If you want to transfer 100 ZEC from sapling to orchard, your transaction shows:
net sapling change: -100 ZEC
net orchard change: +100 ZEC
Therefore, the amount in each pool is tracked, though the addresses and individual amounts remain hidden.

Our note selection method aims to minimize inter-pool transfers since they need to go through the turnstile.

In other words, if a recipient accepts Sapling or Orchard, we prefer to use Orchard funds. But if we don't have enough Orchard UTXO, we fall back to Sapling UTXO. In this case, we don't need to transfer between shielded pools.

However, if the recipient *only* accepts Orchard and we ran out of Orchard funds, then we must use Sapling UTXO and reveal the amount that crossed the pools.

With that said, let's describe our algorithm.

We have recipients with Legacy addresses and Unified addresses. An address can have one or many Transparent, Sapling, or Orchard receivers.
- T only
- S only
- O only (Technically, this would be a UA with only an Orchard receiver).
- T + S,
- T + O,
- S + O,
- T + S + O

Since our wallet is shielded by default, T+S, T+O, and T+S+O addresses are considered S, O, and S+O. We discard the transparent address part. We will only use the shielded receivers.

On our side, we have T, S, and O notes.
We do not utilize T notes unless the user explicitly indicates it.

## Rule 0: Destination of change
The change is sent to our shielded address. The user selects either sapling or orchard.

## Rule 1: Using T inputs
If we use T notes, we use them all, even when the transaction can be made with fewer notes. We use T funds first to pay S+O, O, S, and T addresses (in this order). It encourages shielding to Orchard.

## Rule 2: Shielded Recipients - Native pool
We have no T-inputs anymore.
If there are any recipients left, we pay them in this order:
- O
- S
- S+O

We use funds from the same pool source.

For example, in the first case, we try to pay Sapling-only recipients with our S funds.

For S+O, we favor O funds. But, if we don't have enough, we use S funds.

At this point, if we still have recipients, we need to include inter-pool transfers.

## Rule 3: Shielded Recipients - Using the Turnstile
We must have some funds remaining in either S or O. Otherwise, we are out of funds. 

Use these funds to pay for S, O and S+O recipients.

## Rule 4: Transparent Recipients
Pay the T recipients using funds from S, then O. It encourages keeping the Orchard funds.





