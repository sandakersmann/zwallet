import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'generated/l10n.dart';
import 'main.dart';

class AccountPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Observer(builder: (context) {
          final _1 = active.dataEpoch;
          return Column(children: [
            SyncStatusWidget(),
            QRAddressWidget(),
            BalanceWidget()
          ]);
        }));
  }
}

class SyncStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final theme = Theme.of(context);
    final simpleMode = settings.simpleMode;

    return Column(children: [
      if (simpleMode) Text(s.simpleMode),
      Observer(builder: (context) {
        final time = eta.eta;
        final syncedHeight = syncStatus.syncedHeight;
        final latestHeight = syncStatus.latestHeight;
        return syncedHeight < 0
            ? Text(s.rescanNeeded)
            : syncStatus.isSynced()
                ? Text('$syncedHeight', style: theme.textTheme.caption)
                : Text('$syncedHeight / $latestHeight $time',
                    style: theme.textTheme.caption!
                        .apply(color: theme.primaryColor));
      })
    ]);
  }
}

class QRAddressWidget extends StatefulWidget {
  @override
  QRAddressState createState() => QRAddressState();
}

class QRAddressState extends State<QRAddressWidget> {
  bool _useSnapAddress = false;
  String _snapAddress = "";

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final s = S.of(context);
      final theme = Theme.of(context);
      final simpleMode = settings.simpleMode;
      final address = _address();
      final shortAddress = addressLeftTrim(address);
      final showTAddr = active.showTAddr;
      final hasTAddr = active.taddress.isNotEmpty;
      final flat = settings.flat;
      final qrSize = getScreenSize(context) / 2.5;
      final hide = settings.autoHide && flat;
      final coinDef = active.coinDef;

      return Column(children: [
        if (hasTAddr)
          Text(showTAddr
              ? s.tapQrCodeForShieldedAddress
              : s.tapQrCodeForTransparentAddress),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        GestureDetector(
            onTap: hasTAddr ? _onQRTap : null,
            child: RotatedBox(
                quarterTurns: hide ? 2 : 0,
                child: QrImage(
                    data: address,
                    size: qrSize,
                    embeddedImage: AssetImage('assets/${coinDef.currency}.png'),
                    backgroundColor: Colors.white))),
        Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        RichText(
            text: TextSpan(children: [
          TextSpan(text: '$shortAddress ', style: theme.textTheme.bodyText2),
          WidgetSpan(
              child: GestureDetector(
                  child: Icon(Icons.content_copy), onTap: _onAddressCopy)),
          WidgetSpan(
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 4))),
          WidgetSpan(
              child: GestureDetector(
                  child: Icon(MdiIcons.qrcodeScan), onTap: _onReceive)),
        ])),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        if (!simpleMode && !showTAddr)
          OutlinedButton(
              child: Text(s.newSnapAddress),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1, color: theme.primaryColor)),
              onPressed: _onSnapAddress),
        if (!simpleMode && showTAddr)
          OutlinedButton(
            child: Text(s.shieldTranspBalance),
            style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1, color: theme.primaryColor)),
            onPressed: () {
              shieldTAddr(context);
            },
          )
      ]);
    });
  }

  _onQRTap() {
    active.toggleShowTAddr();
  }

  _onAddressCopy() {
    Clipboard.setData(ClipboardData(text: _address()));
    final snackBar =
        SnackBar(content: Text(S.of(context).addressCopiedToClipboard));
    rootScaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  _onReceive() async {
    Navigator.of(context).pushNamed('/receive', arguments: _address());
  }

  _onSnapAddress() {
    final address = active.newAddress();
    setState(() {
      _useSnapAddress = true;
      _snapAddress = address;
    });
    Timer(Duration(seconds: 15), () {
      setState(() {
        _useSnapAddress = false;
      });
    });
  }

  String _address() {
    final address = active.showTAddr
        ? active.taddress
        : _useSnapAddress
            ? _snapAddress
            : active.account.address;
    return address;
  }
}

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Observer(builder: (context) {
        final s = S.of(context);
        final theme = Theme.of(context);
        final flat = settings.flat;
        final hide = settings.autoHide && flat;
        final showTAddr = accountManager.showTAddr;
        final balance = showTAddr ? active.tbalance : active.account.balance;
        final balanceColor = !showTAddr
            ? theme.colorScheme.primaryVariant
            : theme.colorScheme.secondaryVariant;
        final balanceHi = hide ? '-------' : _getBalanceHi(balance);
        final deviceWidth = getWidth(context);
        final digits = deviceWidth.index < DeviceWidth.sm.index ? 7 : 9;
        final balanceStyle = (balanceHi.length > digits
                ? theme.textTheme.headline4
                : theme.textTheme.headline2)!
            .copyWith(color: balanceColor);

        final fx = priceStore.coinPrice;
        final balanceFX = balance * fx / ZECUNIT;
        final coinDef = active.coinDef;

        return Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: <Widget>[
                if (!hide)
                  Text('${coinDef.symbol}', style: theme.textTheme.headline5),
                Text(' $balanceHi', style: balanceStyle),
                if (!hide) Text('${_getBalanceLo(balance)}'),
              ]),
          if (hide) Text(s.tiltYourDeviceUpToRevealYourBalance),
          if (!hide && fx != 0.0)
            Text("${decimalFormat(balanceFX, 2, symbol: settings.currency)}",
                style: theme.textTheme.headline6),
          if (!hide && fx != 0.0)
            Text(
                "1 ${coinDef.ticker} = ${decimalFormat(fx, 2, symbol: settings.currency)}"),
        ]);
      });

  static _getBalanceHi(int b) {
    return decimalFormat((b.abs() ~/ 100000) / 1000.0, 3);
  }

  static _getBalanceLo(int b) {
    return (b.abs() % 100000).toString().padLeft(5, '0');
  }
}
