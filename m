Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC193B9BE
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 18:40:44 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A7F7BD7E;
	Mon, 10 Jun 2019 16:40:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72DB01E2A
	for <bridge@lists.linux-foundation.org>;
	Sat,  8 Jun 2019 07:41:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C45E711
	for <bridge@lists.linux-foundation.org>;
	Sat,  8 Jun 2019 07:41:27 +0000 (UTC)
Received: by mail-it1-f180.google.com with SMTP id x22so6246043itl.2
	for <bridge@lists.linux-foundation.org>;
	Sat, 08 Jun 2019 00:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IcTCzGaamLdBBX7BWMByzTFaUuaziPaIgyIeshx7L9g=;
	b=M2DRYR2QKPtG/7LoKxxAtPPLvDKZsdq9sm3UJVkODlGHXhQjUXLtg+/sr6H042Px8B
	HG9OjJe4aYvFNMHP7qJkQ8Gt6bTQceX3s4YVVWwR4FbBKY6Z5yCePRRl4sKaX1zGgo0c
	25OzLKrx48IptyRl/yk7zXYvUXsF9PJKeqhoutP51iNtLiD3rCjgVjVit0eOBlWGDk71
	IaCE5kelc2eytHNWdoSYDoLgIdKZemMQ+z18TXAFStCs7i/wuKOa2JaZ0WGsx8v+Zxdf
	tiLwjlJkub21nn7nm516nXy0tll9ANcAb/m0/dxq5HeYH4f8SFhl8rOJkN7dF8ura+0t
	pr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IcTCzGaamLdBBX7BWMByzTFaUuaziPaIgyIeshx7L9g=;
	b=KlRuDazGFfxGcP6SPmMNMWNzhhtfF4WueS/KeLsyXapSezEbunAR6eWH6LDZXdGsyv
	wG2R8gvEPhWAlkaZz40J/VOs+3NwjKKHdZhB1AhazIxoU9wFwwcUpMerZGCXNTpczVU/
	ByZt+YQxFvx6ogS54vnopFLK/Ks2kdrnHx4xeIluFDL3hX4czSAlzwO9cHXrZ2F6JygW
	0klSvAOpBv2Leld1KOxVxjgKNZB3eiRQICaU5Y6IMaczdCO91ARpoQW3PGhTBpmdfWe1
	t60j8FUskQY/ETWWk5WoxzA+J1DxDgM3F590RSdLCDz/QlPBNc68SG7lAY6frr9zEdE7
	Ipog==
X-Gm-Message-State: APjAAAUBrkSc0vJ57ntIeyFbtf+50FZxABAJMH9ZxTjfaOuRBXRqyABT
	nLST/aFulqRkn+j4Mxx+EI8Pssl3LFCEnOKzqMqwJbNAxGM=
X-Google-Smtp-Source: APXvYqxrfJd9QGXVPWKYmvRBqvjWmD5mPaZzqt9rI7yVAyeFqFxyophTPcYiQvy+vVcZLCObnNlsc2CZ/+JY4qInkgg=
X-Received: by 2002:a24:6885:: with SMTP id v127mr6863155itb.177.1559979687275;
	Sat, 08 Jun 2019 00:41:27 -0700 (PDT)
MIME-Version: 1.0
From: dhan lin <dhan.lin1989@gmail.com>
Date: Sat, 8 Jun 2019 13:11:16 +0530
Message-ID: <CAMvS6vZrRoA-DtFnsOuhdzYyDi9fFCq=pSrxaKqLDC4Xc7=QFg@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="0000000000001df236058acb13e5"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Mon, 10 Jun 2019 16:40:25 +0000
Subject: [Bridge] Originating device info for Packets trapped on Bridge
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

--0000000000001df236058acb13e5
Content-Type: text/plain; charset="UTF-8"

Hi All,

I've a few doubts w.r.t layer2-frame processing in linux and PACKET_ORIGDEV
socket option for getting origdev info.

For example, lets assume below given is the set of net devices that my
frame is intended to traverse over.

eth0(1) -> bond0(2) -> bridge(3) -> vlan100(4). >>> (x) ifindex for
each netdevice

I have created a  RAW socket ( not binded to any interface) , attached with
a socket filter to trap only interested packets.
I am getting a copy of frame trapped from each of the netdevice. is this
expected?

frame trapped from eth0 will have from.sll_ifindex=1
frame trapped from bond0 will have from.sll_ifindex=2
frame trapped from bridge will have from.sll_ifindex=3
frame trapped from vlan100 will have from.sll_ifindex=4

If I set the following socket option PACKET_ORIGDEV , I get the following
result

frame trapped from eth0 will have from.sll_ifindex=1
frame trapped from bond0 will have from.sll_ifindex=1
frame trapped from bridge will have from.sll_ifindex=3.  >> why is this not
set to 1 or 2?
frame trapped from vlan100 will have from.sll_ifindex=3

can someone help me understand the role played by PACKET_ORIGDEV socket
option in the above scenario.

--0000000000001df236058acb13e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi All,<br></div><div><br></div><=
div>I&#39;ve a few doubts w.r.t layer2-frame processing in linux and PACKET=
_ORIGDEV socket option for getting origdev info.</div><div><br></div><div>F=
or example, lets assume below given is the set of net devices that my frame=
 is intended to traverse over.</div><div><pre style=3D"color:rgb(0,0,0)"><s=
pan style=3D"background-color:rgb(238,238,238)"><code>eth0(1) -&gt; bond0(2=
) -&gt; bridge(3) -&gt; vlan100(4). &gt;&gt;&gt; (x) ifindex for each netde=
vice</code></span></pre></div><div>I have created a =C2=A0RAW socket ( not =
binded to any interface) , attached with a socket filter to trap only inter=
ested packets.</div><div>I am getting a copy of frame trapped from each of =
the netdevice. is this expected?</div><div><br></div><div>frame <span style=
=3D"background-color:rgb(255,255,255)">trapped from=C2=A0<span style=3D"col=
or:rgb(0,0,0)">eth0 will have from.sll_ifindex=3D1</span></span></div><div>=
<span style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(=
0,0,0)">frame trapped from bond0 will have=C2=A0</span><span style=3D"color=
:rgb(0,0,0)">from.sll_ifindex=3D2</span></span></div><div><div><span style=
=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)">fra=
me trapped from bridge will have=C2=A0</span><span style=3D"color:rgb(0,0,0=
)">from.sll_ifindex=3D3</span></span></div></div><div><div><span style=3D"b=
ackground-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)">frame tr=
apped from vlan100 will have=C2=A0</span><span style=3D"color:rgb(0,0,0)">f=
rom.sll_ifindex=3D4</span></span></div><div><span style=3D"color:rgb(0,0,0)=
;background-color:rgb(255,255,255)"><br></span></div><span style=3D"color:r=
gb(0,0,0);background-color:rgb(255,255,255)"></span></div><div>If I set the=
 following socket option=C2=A0PACKET_ORIGDEV , I get the following result</=
div><div><br></div><div><div>frame=C2=A0trapped from=C2=A0<span style=3D"co=
lor:rgb(0,0,0)">eth0 will have from.sll_ifindex=3D1</span></div><div><span =
style=3D"color:rgb(0,0,0)">frame trapped from bond0 will have=C2=A0</span><=
span style=3D"color:rgb(0,0,0)">from.sll_ifindex=3D1</span></div><div><span=
 style=3D"color:rgb(0,0,0)">frame trapped from bridge will have=C2=A0</span=
><span style=3D"color:rgb(0,0,0)">from.sll_ifindex=3D3. =C2=A0&gt;&gt; why =
is this not set to 1 or 2?</span></div><div><span style=3D"color:rgb(0,0,0)=
">frame trapped from vlan100 will have=C2=A0</span><span style=3D"color:rgb=
(0,0,0)">from.sll_ifindex=3D3</span></div></div><div><span style=3D"color:r=
gb(0,0,0)"><br></span></div><div><font color=3D"#000000">can someone help m=
e understand the role played by=C2=A0</font>PACKET_ORIGDEV socket option in=
 the above scenario.</div></div></div></div></div></div></div></div></div><=
/div></div></div>

--0000000000001df236058acb13e5--
