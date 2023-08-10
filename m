Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA63776DE1
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 04:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F22AB83B77;
	Thu, 10 Aug 2023 02:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F22AB83B77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKMt3zbswnB8; Thu, 10 Aug 2023 02:07:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0C08083B7F;
	Thu, 10 Aug 2023 02:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C08083B7F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E311C0DD4;
	Thu, 10 Aug 2023 02:07:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86B49C0032
 for <bridge@lists.linux-foundation.org>; Thu, 10 Aug 2023 02:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42DB7401C7
 for <bridge@lists.linux-foundation.org>; Thu, 10 Aug 2023 02:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42DB7401C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFEsC9Cm0BDh for <bridge@lists.linux-foundation.org>;
 Thu, 10 Aug 2023 02:07:25 +0000 (UTC)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88EE5401C1
 for <bridge@lists.linux-foundation.org>; Thu, 10 Aug 2023 02:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88EE5401C1
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id C708E40CCB
 for <bridge@lists.linux-foundation.org>; Thu, 10 Aug 2023 04:07:18 +0200 (CEST)
Date: Thu, 10 Aug 2023 04:07:17 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <ZNRGVfk0vAYYlfVU@sellars>
References: <ZNGMVUNsZWWUd7so@sellars> <20230807182051.47d4d613@hermes.local>
 <ZNQZsl9YZXeCc7cf@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZNQZsl9YZXeCc7cf@sellars>
X-Last-TLS-Session-Version: TLSv1.3
Subject: Re: [Bridge] Getting + maintaining a consistent MDB view in
 userspace?
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

On Thu, Aug 10, 2023 at 12:56:50AM +0200, Linus Lüssing wrote:
> [...]
> When setting a bridge's "multicast_mld_version" to 2 it looks to me like
> there is quite a bit of redundancy in both "bridge mdb show"
> and "bridge monitor mdb" output. And addition and deletion notifications
> don't look that symmetric to me then anymore. There doesn't
> happen to exist some documentation about these (netlink specific)
> additions that came with the IGMPv3/MLDv2 implementation, or does
> it?

And just a few examples which confuse me a bit:

1) ASM, single listener:

$ ./mcjoin -d -i veth0 "[ff12::125]

bridge monitor mdb:

```
dev br0 port veth1 grp ff12::125 temp filter_mode include proto kernel
dev br0 port veth1 grp ff12::125 temp filter_mode exclude proto kernel
```

-> first line seems to be superfluous / no-op?
   Can I always ignore such an event with:
   "n->nlmsg_type == RTM_NEWMDB && mode == MCAST_INCLUDE &&
    !tb[MDBA_MDB_EATTR_SOURCE] && !tb[MDBA_MDB_EATTR_SRC_LIST]" ?

Leave only creates one event:

$ kill <mcjoin ...>

```
Deleted dev br0 port veth1 grp ff12::125 temp filter_mode include proto kernel
```

2) SSM, two listeners:

$ ./mcjoin -d -i veth0 "[fe80::130],[ff12::130]"

```
dev br0 port veth1 grp ff12::130 temp filter_mode include proto kernel
dev br0 port veth1 grp ff12::130 src fe80::130 temp filter_mode include proto kernel
dev br0 port veth1 grp ff12::130 temp filter_mode include source_list fe80::130/260.00 proto kernel
```

-> again first line superfluous / no-op?
   and second + third line identical?

Adding a second join:

$ ./mcjoin -d -i veth0 "[fe80::131],[ff12::130]"

```
dev br0 port veth1 grp ff12::130 src fe80::131 temp filter_mode include proto kernel
dev br0 port veth1 grp ff12::130 temp filter_mode include source_list fe80::131/260.00,fe80::130/247.86 proto kernel
```

-> so looks like the source_list line is actually always a (superfluous /
   redundant?) summary of all sources for this group+port?

And deleting here creates three events:

$ kill <mcjoin -d -i veth0 "[fe80::131],[ff12::130]">

```
Deleted dev br0 port veth1 grp ff12::130 src fe80::131 temp filter_mode include proto kernel
```

$ kill <mcjoin -d -i veth0 "[fe80::130],[ff12::130]">

```
Deleted dev br0 port veth1 grp ff12::130 src fe80::130 temp filter_mode include proto kernel
Deleted dev br0 port veth1 grp ff12::130 temp filter_mode include proto kernel
```

And here the last line seems to be superfluous / redundant?
And the behaviour seems to differ from 1) / ASM, where
I would always only get one event when leaving?


----------

So this currently confuses me a bit regarding which of these netlink
notifications I might be able to ignore safely and which not. And
how to interpret them, which ones are supposed to be a singular update
I would need to add and which ones are supposed to be summaries
that are supposed to potentially update/replace multiple entries.

Regards, Linus
