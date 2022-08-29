---
title: FAQ
weight: 80
pre: <svg class="icon"><use xlink:href="/sprite.svg#question"></use></svg>
---

1. Why is synchronization taking so long?

   Starting from July 2022, there has been a great increase in activity
   and the blockchain grew by more than 10x. Therefore you will see a significant
   slowdown in synchronization speed after block ~1,700,000. This is
   being addressed by the Zcash dev team. In the meantime, I recommend
   performing a full rescan only when you have Wifi or Ethernet because it
   will download more than 5 GB of data.

2. I have made a transfer into YWallet but I do not see my funds.

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
   [sub accounts]({{<relref "sub-account">}}) to recover them or 
   [scan transparent addesses]({{<relref "sub-account#scan-transparent-addresses">}}).

4. I made a transfer from my transparent address and now the balance is 0.
   Where is the change?

   YWallet automatically shields your change and it was sent to the shielded address
   of the same account. If you do not see it there, it is most likely because
   the account is not synchronized yet.

5. Does it support transparent addresses?

   Yes, but we highly recommend shielding these coins before spending them.
   The app is Shielded by Default.
  
6. How fast is the synchronization exactly?

   It depends on the hardware but for average phones, YWallet scans the entire blockchain
   (as of Sep 2021) in around 1-3 minutes. In the end, your account balances are 
   fully available to spend. The reference wallet SDK is 100x slower.
   
7. Was there a ZWallet and WarpWallet? 

   There used to be different versions of the app for Ycash and Zcash. The app was
   initially built for Zcash and was called ZWallet. Then it was ported to Ycash
   and named YWallet.
   Unfortunately, the name ZWallet is taken on the Apple Store and the app
   had to be rebranded WarpWallet.
   
   Now we have a single version that works for both Ycash and Zcash and the app
   ZWallet is discontinued.
   
8. Is it open source?
   
   Yes, the source code is available on [github](https://github.com/hhanh00/zwallet).
   
9. Does it collect data?

   *Absolutely no user data is collected*. The wallet only connects to a `lightwalletd` server
   (by default the officially sponsored server) and CoinGecko for market prices.

10. Can it connect to any lightwalletd?

   Yes, the wallet uses the standard API of lightwalletd. It can connect to 
   ZecWallet version of lightwalletd or your own deployment.
 
11. Can I receive my mining rewards in my transparent address?

   It is best not to receive your mining rewards because they need to mature
   for 100 blocks before they can be spent. The Y/ZWallet cannot
   shield your balance if any of the UTXO is not old enough. Currently,
   `lightwalletd` does not provide an API to get the UTXO age and the
   shielding transaction will be rejected by the network.

12. How can I keep my account safe?

   The number one reason for lost coins is failure to have a *backup* of the 
   seed phrase.
   
   {{% notice warning %}}
   Please, **DO A BACKUP ASAP** and make sure that it is kept in a 
   safe place away from spying eyes.
   {{% /notice %}}
   
   *All the application data can be recovered from the seed phrase!*
   
   **Do not share your seed phrase with other people!**

13. I would like to donate

   Thanks for your support. <a href='ycash:ys1jl5whtnlq56x5g3zcr36jmjhz9e295mgjmc64qsw7dcqdjp9l6ekydp2k0hj9k27x8sgqh6580t?amount=10&memo=9g'>Click here to donate 10 YEC</a> but Any amount is welcome.
