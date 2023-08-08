Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869577356C
	for <lists.bridge@lfdr.de>; Tue,  8 Aug 2023 02:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C776240E46;
	Tue,  8 Aug 2023 00:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C776240E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEjD73qsTZ0V; Tue,  8 Aug 2023 00:37:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 30B5640F4E;
	Tue,  8 Aug 2023 00:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30B5640F4E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6912BC0DD4;
	Tue,  8 Aug 2023 00:37:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74152C0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 00:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3ABEC40F4E
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 00:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ABEC40F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p2pykfkjbxnY for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 00:37:31 +0000 (UTC)
X-Greylist: delayed 494 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 08 Aug 2023 00:37:31 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A29440E46
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A29440E46
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 00:37:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id F1D063F54A
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 02:29:13 +0200 (CEST)
Date: Tue, 8 Aug 2023 02:29:09 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <ZNGMVUNsZWWUd7so@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Last-TLS-Session-Version: TLSv1.3
Subject: [Bridge] Getting + maintaining a consistent MDB view in userspace?
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

Hi,

Is there a recommended way to get and monitor the MDB state from
userspace, without potential synchronization races?

I can use "bridge monitor mdb" to get changes or "bridge mdb show"
to get the current state (as well as use the underlying netlink
calls from my own application without the "bridge" command).

But if I were first calling "bridge mdb show" and then "bridge
monitor mdb" then there is a brief moment where I might miss some
changes. Or if I were doing it the other way around then a change
might wrongly override a valid entry? Or the full dump might not
be as up to date as the change event I got before?

Ideally I'd be looking for a variant of "bridge monitor mdb" which
first dumps the whole, consistent mdb state and after that
provides updates in the correct order.

Regards, Linus
