Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E9E3EA038
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 10:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 793EF4073E;
	Thu, 12 Aug 2021 08:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXT-FNNFpXpn; Thu, 12 Aug 2021 08:04:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2D99740E0B;
	Thu, 12 Aug 2021 08:04:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2BD6BC0025;
	Thu, 12 Aug 2021 08:04:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 20687C000E
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 08:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 023A582AA7
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 08:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0I_6LOL1hGZ for <bridge@lists.linux-foundation.org>;
 Mon,  9 Aug 2021 08:45:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F891827DE
 for <bridge@lists.linux-foundation.org>; Mon,  9 Aug 2021 08:45:17 +0000 (UTC)
Received: by mail-il1-x12e.google.com with SMTP id h18so10553346ilc.5
 for <bridge@lists.linux-foundation.org>; Mon, 09 Aug 2021 01:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8fpo8yqQaQlNvvpYKknagkNgORHOAXD0ge6nVvPBYQc=;
 b=YvHp2KCvrpYu4hJ6tj8505JlzosDp9JOmSy5iKr5c9Q67vzgaOSlXd6Hm1crJOI9dG
 3+OTS2w9FRgvilJAnrOlxauiJMYdOho+mAWeTMpJvVKPQC1brv+iZaSeqKOBd631ucIC
 lgSfjWHz36Ut1VV4v3GzP82IQZtIu6iG/wXh2DJJo6dDu4pEJNTfkWc1uL8MHCoIBvw6
 JZ251gKm+C3FTnig6mdym92tCameYlppAK55wRlmY5+ukvTIc6XqiWNeqlLni36C4Oky
 sTL42wgQAD3+hGqrLhqBLKVJ4/MmZ+nxncCqzJ/tcDwnNreNN/yNZ0ZisBBUeHb+33BD
 2kBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8fpo8yqQaQlNvvpYKknagkNgORHOAXD0ge6nVvPBYQc=;
 b=CACX67YebrcLfvHg16nxF6znFsJXbYsrQrZmZ8UBRD4iEK0BWb8wIlB9M+mt2vsoe3
 C1NSr5ZyFg3oUPlV9ABo2LSjn0yKt/yYKfToQyy6mTr/iqWlya4gXKiLhbTp+yyWi66D
 wlYPoekVw/Bf7R+a0cqKekftnX3Abk6l/zoF+Jx4cVlwD2eMtAOk38GtMztvH5vJ87Qh
 ywEmqOqrwlYv8voZXGPA/7Rjm3Axb+sCz1VjqyW2xMFUbdnGV/ojTo3UOQv44wvFwXgs
 fdMSLOpiaBrFDDUxazJ19hGH/NlRaBG27pq+HWPH1iPbz2Hs5oJAVOvAPeIZHw1DL+5c
 5JFw==
X-Gm-Message-State: AOAM532Io1wsA80yUXQ08Ln7QMqBF9VhBvA4kw6W7qX/gRejzOcTeTdV
 W7BrJmWrCaqCYXJT/Zm4mDUdMXPfjRvKo1zZ3HKdXvZzqgw=
X-Google-Smtp-Source: ABdhPJyH0R3WlelltP5EvsjVuin6qkmSLMOyu5v7dz3VSjFqNUbs12Kxqza/xYLvKBRDjlYUG+gw2DWxSRhYIPEAyng=
X-Received: by 2002:a92:ca90:: with SMTP id t16mr15298ilo.32.1628498716130;
 Mon, 09 Aug 2021 01:45:16 -0700 (PDT)
MIME-Version: 1.0
From: Andy Whiteman <andysrobotics@gmail.com>
Date: Mon, 9 Aug 2021 09:45:07 +0100
Message-ID: <CAOFSikqR1zYD+Qd8eMQ0gCgSwnPnLV127Z+BrnM97Eud_GPCAQ@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="0000000000007dffce05c91c6731"
X-Mailman-Approved-At: Thu, 12 Aug 2021 08:04:23 +0000
Subject: [Bridge] MTU/FCS Issue on linux bridge when using SPI interface
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--0000000000007dffce05c91c6731
Content-Type: text/plain; charset="UTF-8"

Hi,

I believe that a bridge set up using bridge-utils is not allowing packets
containing FCS checksums in a specific direction.

I have set up a Raspberry pi with 2 SPI ethernet ports (ENC28J60) and added
them to a bridge. For diagnostics purposes, I also added a USB eth adaptor
to the same bridge.

When frames are going in a very specific direction an FCS is being added
(presumably by the kernel or bridge) however the bridge only seems to allow
1514 bytes to cross it. As soon as FCS is added this goes to 1518 bytes
long and gets dropped by the bridge.
I have increased the MTU settings and decreased them to no avail. I
disabled FCS on the physical chip but also made no change.

Full logs and wire shark screenshots can be found on my issue raised to -
https://github.com/raspberrypi/linux/issues/4488

Ping results from my PC to the pi (host) via different interfaces -
increasing ping data size and monitoring results via wireshark.
PC (10.0.1.20)->SPIEth->Br0->Host (10.0.1.106) No extra bytes - can ping
1472
PC (10.0.1.20)->SPIEth->Br0->Client (10.0.1.135) No extra bytes - can ping
1472
PC (10.0.1.20)->PiGigEth->Br0->Host (10.0.1.106) No extra bytes - can ping
1472
PC (10.0.1.20)->PiGigEth->Br0->USBEth->Client (10.0.1.135) No extra bytes - can
ping 1472
PC (10.0.1.20)->PiGigEth->Br0->SPIEth->Client (10.0.1.135) 4 extra bytes on
response (FCS) - can only ping 1468 (1468-1472 gets dropped 1473 gets
fragmented)
PC (10.0.1.20)->USBEth->Br0->SPIEth->Client (10.0.1.135) 4 extra bytes on
response (FCS) - can only ping 1468 (1468-1472 gets dropped 1473 gets
fragmented)

If I do not have the bridge set up and ping from my PC to the pi (host)
with my PC in the SPI port everything is normal.

Regards
Andy Whiteman

--0000000000007dffce05c91c6731
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I believe that a bridge set up usin=
g bridge-utils is not allowing packets containing FCS checksums in a specif=
ic direction.</div><div><br></div><div>I have set up a Raspberry pi with 2 =
SPI ethernet ports (ENC28J60) and added them to a bridge. For diagnostics p=
urposes, I also added a USB eth adaptor to the same bridge.</div><div><br><=
/div><div>When frames are going in a very specific=C2=A0direction an FCS is=
 being added (presumably by the kernel=C2=A0or bridge) however the bridge o=
nly seems to allow 1514 bytes to cross it. As soon as FCS is added this goe=
s to 1518 bytes long and gets dropped by the bridge.</div><div>I have incre=
ased the MTU settings and decreased them to no avail. I disabled FCS on the=
 physical chip but also made no change.<br><div><br></div><div>Full logs an=
d wire shark screenshots=C2=A0can be found=C2=A0on my issue raised to -=C2=
=A0<a href=3D"https://github.com/raspberrypi/linux/issues/4488">https://git=
hub.com/raspberrypi/linux/issues/4488</a></div><div><br></div><div>Ping res=
ults from my PC to the pi (host) via different interfaces - increasing ping=
 data size and monitoring results=C2=A0via wireshark.</div><div><span style=
=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;;font-size:14px">PC (10.0.1.20)-&gt;SPIEth-&gt;Br0-&=
gt;Host (10.0.1.106) No extra bytes - can ping 1472</span><br style=3D"box-=
sizing:border-box;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSys=
temFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color E=
moji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px"><span style=3D"color:=
rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&q=
uot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe U=
I Emoji&quot;;font-size:14px">PC (10.0.1.20)-&gt;SPIEth-&gt;Br0-&gt;Client =
(10.0.1.135) No extra bytes</span>=C2=A0-=C2=A0<span style=3D"color:rgb(36,=
41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,He=
lvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji=
&quot;;font-size:14px">can ping 1472</span><br style=3D"box-sizing:border-b=
ox;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;S=
egoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;;font-size:14px"><span style=3D"color:rgb(36,41,46);f=
ont-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,=
Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;f=
ont-size:14px">PC (10.0.1.20)-&gt;PiGigEth-&gt;Br0-&gt;Host (10.0.1.106) No=
 extra bytes</span>=C2=A0-=C2=A0<span style=3D"color:rgb(36,41,46);font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,s=
ans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-siz=
e:14px">can ping 1472</span><br style=3D"box-sizing:border-box;color:rgb(36=
,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,H=
elvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoj=
i&quot;;font-size:14px"><span style=3D"color:rgb(36,41,46);font-family:-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-seri=
f,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">=
PC (10.0.1.20)-&gt;PiGigEth-&gt;Br0-&gt;USBEth-&gt;Client (10.0.1.135) No e=
xtra bytes</span>=C2=A0-=C2=A0<span style=3D"color:rgb(36,41,46);font-famil=
y:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,san=
s-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:=
14px">can ping 1472</span></div><span style=3D"color:rgb(36,41,46);font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,s=
ans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-siz=
e:14px">PC (10.0.1.20)-&gt;PiGigEth-&gt;Br0-&gt;SPIEth-&gt;Client (10.0.1.1=
35)=C2=A0</span><span style=3D"box-sizing:border-box;font-weight:600;color:=
rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&q=
uot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe U=
I Emoji&quot;;font-size:14px">4 extra bytes on response (FCS) -=C2=A0</span=
><span style=3D"box-sizing:border-box;color:rgb(36,41,46);font-family:-appl=
e-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">c=
an only ping 1468 (1468-1472 gets dropped 1473 gets fragmented)</span><br s=
tyle=3D"box-sizing:border-box;color:rgb(36,41,46);font-family:-apple-system=
,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;A=
pple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px"><span sty=
le=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quo=
t;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&=
quot;Segoe UI Emoji&quot;;font-size:14px">PC (10.0.1.20)-&gt;</span><span s=
tyle=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&q=
uot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;;font-size:14px">USBEth</span><span style=3D"col=
or:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Sego=
e UI Emoji&quot;;font-size:14px">-&gt;Br0-&gt;SPIEth-&gt;Client (10.0.1.135=
)=C2=A0</span><span style=3D"box-sizing:border-box;font-weight:600;color:rg=
b(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quo=
t;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI =
Emoji&quot;;font-size:14px">4 extra bytes on response (FCS) -=C2=A0</span><=
span style=3D"box-sizing:border-box;color:rgb(36,41,46);font-family:-apple-=
system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">can=
 only ping 1468 (1468-1472 gets dropped 1473 gets fragmented)</span><div><s=
pan style=3D"box-sizing:border-box;font-weight:600;color:rgb(36,41,46);font=
-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Ari=
al,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font=
-size:14px"><br></span></div><div>If I do not have the bridge set up and pi=
ng from my PC to the pi (host) with my PC in the SPI port everything is nor=
mal.</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Regards<div>Andy =
Whiteman<br></div></div></div></div></div></div></div>

--0000000000007dffce05c91c6731--
