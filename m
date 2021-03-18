Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251F7340076
	for <lists.bridge@lfdr.de>; Thu, 18 Mar 2021 08:54:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9928430A0;
	Thu, 18 Mar 2021 07:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbXUkJ883_oE; Thu, 18 Mar 2021 07:54:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E7034309E;
	Thu, 18 Mar 2021 07:54:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3CDEDC0011;
	Thu, 18 Mar 2021 07:54:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B318C0001
 for <bridge@lists.linux-foundation.org>; Thu, 18 Mar 2021 07:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D0EA4309A
 for <bridge@lists.linux-foundation.org>; Thu, 18 Mar 2021 07:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VCDPHm8a3ZK for <bridge@lists.linux-foundation.org>;
 Thu, 18 Mar 2021 07:54:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mr024msb.fastweb.it (mr024msb.fastweb.it [85.18.95.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA52841566
 for <bridge@lists.linux-foundation.org>; Thu, 18 Mar 2021 07:54:01 +0000 (UTC)
Received-SPF: pass (mr024msb.fastweb.it: domain assyoma.it designates
 93.63.55.57 as permitted sender) identity=mailfrom;
 receiver=mr024msb.fastweb.it; client-ip=93.63.55.57;
 envelope-from=g.danti@assyoma.it; helo=plutone.assyoma.it;
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduledrudefhedgudduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhtefuvfghgfeupdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhepggffhffvufgfkfigtgfgsehtjehjtddtredvnecuhfhrohhmpefiihhonhgrthgrnhcuffgrnhhtihcuoehgrdgurghnthhisegrshhshihomhgrrdhitheqnecuggftrfgrthhtvghrnhepleduheefjedtvefghfefheefueefgeekteefjeevveffvedvvdehveejgedtveevnecuffhomhgrihhnpegrshhshihomhgrrdhithenucfkphepleefrdeifedrheehrdehjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehplhhuthhonhgvrdgrshhshihomhgrrdhithdpihhnvghtpeelfedrieefrdehhedrheejpdhmrghilhhfrhhomhepghdruggrnhhtihesrghsshihohhmrgdrihhtpdhrtghpthhtohepsghrihgughgvsehlihhsthhsrdhlihhnuhigqdhfohhunhgurghtihhonhdrohhrgh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from plutone.assyoma.it (93.63.55.57) by mr024msb.fastweb.it
 (5.8.710) id 605300FF00007CEF for bridge@lists.linux-foundation.org;
 Thu, 18 Mar 2021 08:53:58 +0100
Received: from webmail.assyoma.it (localhost [IPv6:::1])
 by plutone.assyoma.it (Postfix) with ESMTPA id 307B5C0A9108
 for <bridge@lists.linux-foundation.org>; Thu, 18 Mar 2021 08:53:58 +0100 (CET)
MIME-Version: 1.0
Date: Thu, 18 Mar 2021 08:53:58 +0100
From: Gionatan Danti <g.danti@assyoma.it>
To: bridge@lists.linux-foundation.org
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <ca6f3aa9149a74e9990a335b6046f133@assyoma.it>
X-Sender: g.danti@assyoma.it
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Bridge] Extract untagged traffic from bridge
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

Hi list,
I have a question regarding the use of bridges with vlans.

Suppose I have a lanbr which bridges together eth0 and various virtual 
interfaces. Putting aside bridge vlan filtering, any interface connected 
to the bridge will see both untagged and tagged traffic.

To only see the tagged traffic portion of specific vlan I can simple 
create a bridge vlan interface (eg: lanbr.10) and use that virtual 
interface as a member of another bridge. In other words:
eth0 -> lanbr -> lanbr.10 -> vlan10br

Now, I wonder if it is possible to extract *only* the untagged traffic 
from the lanbr bridge. Something similar to that:
eth0 -> lanbr -> lanbr.untagged -> untbr

Full disclosure: a virtual machine bridged on lanbr will see both tagged 
and untagged traffic. This is fine for, say, a virtual firewall with a 
trunk interface. However, I do not want any other VM residing on the 
untagged bridge to see tagged traffic. So I need to confine these 
machines to see only untagged packet.

One possible approach would be to use ebtables to drop 802.1q tagged 
packets on lanbr unless they are for a specific virtual machine 
interface (and it seems to work well), but I wonder if the same can be 
obtained without calling ebtables into the mix.

Regards.

-- 
Danti Gionatan
Supporto Tecnico
Assyoma S.r.l. - www.assyoma.it
email: g.danti@assyoma.it - info@assyoma.it
GPG public key ID: FF5F32A8
