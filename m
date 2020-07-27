Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A64E922ED68
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 15:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2649A204DD;
	Mon, 27 Jul 2020 13:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xeuPtQ+39ezw; Mon, 27 Jul 2020 13:33:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C1E8C204C2;
	Mon, 27 Jul 2020 13:33:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 98AA7C0864;
	Mon, 27 Jul 2020 13:33:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BA2DAC004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A19B184D8A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7WGtqIACS_Ib for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 13:33:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AD7884CEB
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:33:39 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0448158053F;
 Mon, 27 Jul 2020 09:33:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 27 Jul 2020 09:33:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=YgsMZx
 5pwgpEVAvT6XOgIf4w7AHitJHDyTwwU4qEatA=; b=jQRpjra5a+K9eBy0w+s+Vz
 mPB94ZBosBduEWOnSjljw+8hpjEzFFC904sOPmp7ARDe+7b/eXgsCKJmhtNyicBZ
 zCPwwjkkb05K0YfGiAlA2DjbQ1tDLUZN+JjPw3S7qjVj1grZEX4aHI1AiVsE9Io+
 bNlBAGI/fkhfHIPXd+03GrSnOlle3YkzFc7ppSc0/mjvP7Ug0ymP/jml3M2cNzpZ
 3nqHV1F7F7FdVxhEmwJMcva5WUKD1OYbGuvTFkmIgufIhR4Y72HrPEITOBAe68Cd
 fvWvVqG/K7r5+3fgppYIz90IWY9h/aEu1muFU3O5nc5cERR4JMg31zdbbJgisnTQ
 ==
X-ME-Sender: <xms:rtceXy0qPafjj9qpXmjj6TnMvhnN8iqgYqZd1rJD6mGA9-PBCQUb-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedriedtgdeijecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeejledrudekuddrvddrudejleenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:rtceX1F_YViw2fDAyMCnC7fGnfljQba279q87vXUcjjPowXNi_Cqsg>
 <xmx:rtceX65T8s2wLqXjs6IFdWVooA4TqBK23wtFXT8C9ITPngl1WqSE7w>
 <xmx:rtceXz1hp7RD7fUx415E-Em3LUMy8FS0rLa4p_YYh0paweRCsdWclA>
 <xmx:stceX9WkosEn1T_dUOgyyDuWyUiT95rC7CZ-5r4WjPh7lQcldUdW1g>
Received: from localhost (bzq-79-181-2-179.red.bezeqint.net [79.181.2.179])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9886A3280064;
 Mon, 27 Jul 2020 09:33:33 -0400 (EDT)
Date: Mon, 27 Jul 2020 16:33:31 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200727133331.GA1851348@shredder>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-20-hch@lst.de>
 <20200727121505.GA1804864@shredder> <20200727130029.GA26393@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200727130029.GA26393@lst.de>
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 19/26] net/ipv6: switch ipv6_flowlabel_opt to
	sockptr_t
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

On Mon, Jul 27, 2020 at 03:00:29PM +0200, Christoph Hellwig wrote:
> On Mon, Jul 27, 2020 at 03:15:05PM +0300, Ido Schimmel wrote:
> > I see a regression with IPv6 flowlabel that I bisected to this patch.
> > When passing '-F 0' to 'ping' the flow label should be random, yet it's
> > the same every time after this patch.
> 
> Can you send a reproducer?

```
#!/bin/bash

ip link add name dummy10 up type dummy

ping -q -F 0 -I dummy10 ff02::1 &> /dev/null &
tcpdump -nne -e -i dummy10 -vvv -c 1 dst host ff02::1
pkill ping

echo

ping -F 0 -I dummy10 ff02::1 &> /dev/null &
tcpdump -nne -e -i dummy10 -vvv -c 1 dst host ff02::1
pkill ping

ip link del dev dummy10
```

Output with commit ff6a4cf214ef ("net/ipv6: split up
ipv6_flowlabel_opt"):

```
dropped privs to tcpdump
tcpdump: listening on dummy10, link-type EN10MB (Ethernet), capture size 262144 bytes
16:26:27.072559 62:80:34:1d:b4:b8 > 33:33:00:00:00:01, ethertype IPv6 (0x86dd), length 118: (flowlabel 0x920cf, hlim 1, next-header ICMPv6 (58) payload length: 64) fe80::6080:34ff:fe1d:b4b8 > ff02::1: [icmp6 sum ok] ICMP6, echo request, seq 2
1 packet captured
1 packet received by filter
0 packets dropped by kernel

dropped privs to tcpdump
tcpdump: listening on dummy10, link-type EN10MB (Ethernet), capture size 262144 bytes
16:26:28.352528 62:80:34:1d:b4:b8 > 33:33:00:00:00:01, ethertype IPv6 (0x86dd), length 118: (flowlabel 0xcdd97, hlim 1, next-header ICMPv6 (58) payload length: 64) fe80::6080:34ff:fe1d:b4b8 > ff02::1: [icmp6 sum ok] ICMP6, echo request, seq 2
1 packet captured
1 packet received by filter
0 packets dropped by kernel
```

Output with commit 86298285c9ae ("net/ipv6: switch ipv6_flowlabel_opt to
sockptr_t"):

```
dropped privs to tcpdump
tcpdump: listening on dummy10, link-type EN10MB (Ethernet), capture size 262144 bytes
16:32:17.848517 f2:9a:05:ff:cb:25 > 33:33:00:00:00:01, ethertype IPv6 (0x86dd), length 118: (flowlabel 0xfab36, hlim 1, next-header ICMPv6 (58) payload length: 64) fe80::f09a:5ff:feff:cb25 > ff02::1: [icmp6 sum ok] ICMP6, echo request, seq 2
1 packet captured
1 packet received by filter
0 packets dropped by kernel

dropped privs to tcpdump
tcpdump: listening on dummy10, link-type EN10MB (Ethernet), capture size 262144 bytes
16:32:19.000779 f2:9a:05:ff:cb:25 > 33:33:00:00:00:01, ethertype IPv6 (0x86dd), length 118: (flowlabel 0xfab36, hlim 1, next-header ICMPv6 (58) payload length: 64) fe80::f09
a:5ff:feff:cb25 > ff02::1: [icmp6 sum ok] ICMP6, echo request, seq 2
1 packet captured
1 packet received by filter
0 packets dropped by kernel
```

> 
> > 
> > It seems that the pointer is never advanced after the call to
> > sockptr_advance() because it is passed by value and not by reference.
> > Even if you were to pass it by reference I think you would later need to
> > call sockptr_decrease() or something similar. Otherwise it is very
> > error-prone.
> > 
> > Maybe adding an offset to copy_to_sockptr() and copy_from_sockptr() is
> > better?
> 
> We could do that, although I wouldn't add it to the existing functions
> to avoid the churns and instead add copy_to_sockptr_offset or something
> like that.

Sounds good

Thanks
