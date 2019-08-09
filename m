Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D13D38C23E
	for <lists.bridge@lfdr.de>; Tue, 13 Aug 2019 22:42:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A640AE4A;
	Tue, 13 Aug 2019 20:41:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92E34B59
	for <bridge@lists.linux-foundation.org>;
	Fri,  9 Aug 2019 05:56:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7E0E67F
	for <bridge@lists.linux-foundation.org>;
	Fri,  9 Aug 2019 05:56:48 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id m44so203849edd.9
	for <bridge@lists.linux-foundation.org>;
	Thu, 08 Aug 2019 22:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=otaaZcKr0K+X/shnSWPSypBKiv91Ry69tb+L2grQdKU=;
	b=PM0R3G4OuDZ1RzKyGdwGFiNP/cRP/D9Qa07ZRKtqoCpdcaICo/9uPrWiNNEum6P8vr
	fRXww1K5LNVbzkY0I9t0Qzn8r5Sn8EyPT6Mg669ETH6lywR25M0+Hh3sSj0F5wGAzXiN
	TsigdSk0HPSmr189aMTJjIs8Tj44HWa4+qFayHuZztNN4poYEiF+sFADqCyuRhsjIDvQ
	CqQV5DCVhjlcR4wLbblWnOJaG6kZ5nzPFOk1pVMULoWFpwMwlSKmcGw/1QmNiFZru2g+
	V0x+IdEHyYwScPm+KbJC0lMmL3hHKlJ5sgUa02YF/xslRiSJehJN/QPnzEvuOzLC0YFg
	yD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=otaaZcKr0K+X/shnSWPSypBKiv91Ry69tb+L2grQdKU=;
	b=UvStTxfhpxFUfz5stVJBzsfygxHGY5GP0DoSzJYUrMTl78xC+EZDR3fnSgwyYNr0WD
	FG04xb7VFW/IwFQdq9wAqgrQbHfxC6CIYYREJRl/jrGuCFoUKJRviOQDmHeDBNbf0EC5
	puFbrwGDeFG1LH0eZUHA/53wB+6SuxamCBidRblysXxlyf9A7YGzKxkNgNAWnHYRTXwx
	3qMQ7l3mLKQvCJTu5sk9WlY5gBkr+jzR8mRMeWWJhd8zfFpkv+uP76nwm5/1wsZXpn+V
	f17BulMmvMiS0wZH4UrGO1X9cVujRRfIYQs2YTdvHVmI8l4Q5h2Ml537beXcVuoDdsnM
	IoWQ==
X-Gm-Message-State: APjAAAXi3xnZIDjaIlENtHZ7lZGYu+kfYENAGQZz8xbVRL5PV4vV74el
	k6iXMTaqkK1vAuayic3zEGL9YrtXRxZjV5iKM4OVU5KP
X-Google-Smtp-Source: APXvYqwQEBRPbi8Ve60ysFpLztAeNTzlbwm6hMzc2aAUxlSuoEI0g/nsojJ+BrlMuEoPoFtbBBUcMwmARFI8FImEkzo=
X-Received: by 2002:aa7:dd09:: with SMTP id i9mr20455470edv.193.1565330207437; 
	Thu, 08 Aug 2019 22:56:47 -0700 (PDT)
MIME-Version: 1.0
From: Ben Shaw <veedubya66@gmail.com>
Date: Fri, 9 Aug 2019 15:56:36 +1000
Message-ID: <CAFUip_6JpHiFcn1X_pGZZzHaXjhp6DseX4DYABdokFgHTnzpuw@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="000000000000f87689058fa8d607"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Tue, 13 Aug 2019 20:41:31 +0000
Subject: [Bridge] linux bridge does not forward arp reply back packets in a
	vmware vm
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

--000000000000f87689058fa8d607
Content-Type: text/plain; charset="UTF-8"

Hi,

there was a post on here with the same title in 2017 which seemed to
discuss the same issue I was seeing today on my ESXi environment with a
bridged Ubuntu VM. A host would not receive ARP replies because the Ubunut
VM between it and the ARP responder would drop the replies.

My issues seemed to reflect the previous poster's issue identically and
after some testing I can see that what is happening is that the ARP request
was being forwarded by the Ubuntu VM and then by the ESXi vswitch out one
of the two physical uplinks it had to the physical switched environment.
Because ESXi vswitches don't participate in STP hence do not block ports
that ARP request would be switched back to the same vSwitch via the second
uplink port and be forwarded back to the Ubuntu bridged VM.

This would cause the Ubuntu VM to see the host sending the ARP request to
be off the other interface so when the ARP reply was received the Ubuntu
host would drop the reply and not forward out the interface on the bridge
the intended recipient was actually on. This could be see in the brctl
showmacs output with the MAC address in question appearing on the wrong
bridge member port as shown below where the first entry should actually be
off port 2.

LAB-SOH01:~$ brctl showmacs br0 | grep no
port no mac addr                is local?       ageing timer
  1     00:0c:29:e7:e4:37       no                12.58
  1     00:a0:c9:0f:02:01       no                 2.00
LAB-SOH01:~$

A work around so far is to disable one of the physical uplinks to the
physical network. I will have to think if there is a better solution which
maintains redundancy. Hopefully this may be of help to some others who see
the same issue.

Thanks

--000000000000f87689058fa8d607
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>there was a post on here=
 with the same title in 2017 which seemed to discuss the same issue I was s=
eeing today on my ESXi environment with a bridged Ubuntu VM. A host would n=
ot receive ARP replies because the Ubunut VM between it and the ARP respond=
er would drop the replies.</div><div><br></div><div>My issues seemed to ref=
lect the previous poster&#39;s issue identically and after some testing I c=
an see that what is happening is that the ARP request was being forwarded b=
y the Ubuntu VM and then by the ESXi vswitch out one of the two physical up=
links it had to the physical switched environment. Because ESXi vswitches d=
on&#39;t participate in STP hence do not block ports that ARP request would=
 be switched back to the same vSwitch via the second uplink port and be for=
warded back to the Ubuntu bridged VM.</div><div><br></div><div>This would c=
ause the Ubuntu VM to see the host sending the ARP request to be off the ot=
her interface so when the ARP reply was received the Ubuntu host would drop=
 the reply and not forward out the interface on the bridge the intended rec=
ipient was actually on. This could be see in the brctl showmacs output with=
 the MAC address in question appearing on the wrong bridge member port as s=
hown below where the first entry should actually be off port 2.<br></div><d=
iv><br></div><div>LAB-SOH01:~$ brctl showmacs br0 | grep no<br>port no mac =
addr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is local? =C2=
=A0 =C2=A0 =C2=A0 ageing timer<br>=C2=A0 1 =C2=A0 =C2=A0 00:0c:29:e7:e4:37 =
=C2=A0 =C2=A0 =C2=A0 no =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A012.58<br>=C2=A0 1 =C2=A0 =C2=A0 00:a0:c9:0f:02:01 =C2=A0 =C2=A0 =C2=
=A0 no =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.00<br>LAB-=
SOH01:~$</div><div><br></div><div>A work around so far is to disable one of=
 the physical uplinks to the physical network. I will have to think if ther=
e is a better solution which maintains redundancy. Hopefully this may be of=
 help to some others who see the same issue.</div><div><br></div><div>Thank=
s<br></div></div>

--000000000000f87689058fa8d607--
