---
title: FAQ
weight: 80
pre: <svg class="icon"><use xlink:href="/sprite.svg#question"></use></svg>
---

## Synchronization

1. Why is synchronization taking so long?

   Starting from July 2022, there has been a great increase in activity
   and the blockchain grew by more than 10x. Therefore you will see a significant
   slowdown in synchronization speed after block ~1,700,000. This is
   being addressed by the Zcash dev team. In the meantime, I recommend
   performing a full rescan only when you have Wifi or Ethernet because it
   will download more than 5 GB of data.

   {{%img_index chart.png %}}

2. But why is the synchronization of BTC/ETH/DOT/ADA/etc.
   so quick then?

   Because they are not private coins. When your BTC wallet
   synchronizes, it does not interact with the blockchain
   directly. It connects to a third-party service that
   has *indexed* every account (it functions like a block explorer). Then your 
   wallet can leverage this index and just download the data it needs.
   Think of it as "searching for the definition of a word
   in a dictionary". You can find the definition of any word very quickly because
   the dictionary is sorted alphabetically.

   However, your transactions are private with ZEC/YEC/XMR/etc, because they cannot be 
   decrypted without the viewing key.
   Consequently, third-party services *cannot index* the shielded addresses.
   When a shielded wallet synchronizes, it must *download* and *process*
   the blockchain locally. In ZEC/YEC, Lightwallets use a protocol that allows
   them to skip downloading ~80% of the blockchain but it still is several
   GB now for ZEC.

3. But it used to be fast before!

   Before there were very few shielded transactions. Less than 1 per block in average.
   Since July, we see thousands of such transactions.

   Why now and not before? No one knows.

   But the protocol allows it. Either we change the protocol or we improve the technology.
   Both options are being discussed. Currently, it is very inexpensive for someone
   to create large transactions and saturate the network. 
   One can argue that the technology is behind the economics. In other words, spam
   is cheap, so spam happens.

## Funds

1. I have made a transfer into YWallet but I do not see my funds.

   If you have transferred to the *transparent* address, make sure you 
   have tapped on the QR code to switch to the transparent mode. YWallet
   manages shielded & transparent balances independently. You do not need
   to wait for synchronization but it can take a few seconds for your balance to get updated. 

   If you still do not see your funds, go the [account manager]({{<relref "account/manager">}}) and check your balance there. Once you go back to the main account
   page, your transparent balance should be updated.

   YWallet does not manage your transparent funds directly. It delegates it to the
   lightwalletd server.

   If you have transferred to the *shielded* address, you have to wait for
   [synchronization]({{<relref "synchronization">}}). As long as it's in progress, 
   the balance shown on the account page is not final. 

3. I still do not see my funds.

   If you have generated additional shielded or transparent addresses in ZWL, they
   will not be seen by YWallet by default. You will need to create 
   [sub accounts]({{<relref "sub-account#sub-accounts">}}) to recover them or 
   [scan transparent addesses]({{<relref "sub-account#scan-transparent-addresses">}}).

4. I made a transfer from my transparent address and now the balance is 0.
   Where is the change?

   YWallet automatically shields your change and it was sent to the shielded address
   of the same account. If you do not see it there, it is most likely because
   the account is not synchronized yet.

5. Does it support transparent addresses?

   Yes, but we highly recommend shielding these coins before spending them.
   The app is Shielded by Default.

## Other questions

1. Was there a ZWallet and WarpWallet?

   There used to be different versions of the app for Ycash and Zcash. The app was
   initially built for Zcash and was called ZWallet. Then it was ported to Ycash
   and named YWallet.
   Unfortunately, the name ZWallet is taken on the Apple Store and the app
   had to be rebranded WarpWallet.
   
   Now we have a single version that works for both Ycash and Zcash and the app
   ZWallet is discontinued.
   
9. Is it open source?
   
   Yes, the source code is available on [github](https://github.com/hhanh00/zwallet).
   
10. Does it collect data?

    *Absolutely no user data is collected*. The wallet only connects to a `lightwalletd` server
    (by default the officially sponsored server) and CoinGecko for market prices.

11. Can it connect to any lightwalletd?

    Yes, the wallet uses the standard API of lightwalletd. It can connect to
    ZecWallet version of lightwalletd or your own deployment.
 
12. Can I receive my mining rewards in my transparent address?

    It is best not to receive your mining rewards because they need to mature
    for 100 blocks before they can be spent. The Y/ZWallet cannot
    shield your balance if any of the UTXO is not old enough. Currently,
    `lightwalletd` does not provide an API to get the UTXO age and the
    shielding transaction will be rejected by the network.

13. How can I keep my account safe?

    The number one reason for lost coins is failure to have a *backup* of the
    seed phrase.

{{% notice warning %}}
Please, **DO A BACKUP ASAP** and make sure that it is kept in a
safe place away from spying eyes.
*All the application data can be recovered from the seed phrase!*
**Do not share your seed phrase with other people!**
{{% /notice %}}


Thanks for your support. <a href='ycash:ys1jl5whtnlq56x5g3zcr36jmjhz9e295mgjmc64qsw7dcqdjp9l6ekydp2k0hj9k27x8sgqh6580t?amount=10&memo=9g'>Click here to donate 10 YEC</a> but Any amount is welcome.
