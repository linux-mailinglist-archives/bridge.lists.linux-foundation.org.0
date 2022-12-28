Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F51658580
	for <lists.bridge@lfdr.de>; Wed, 28 Dec 2022 19:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C24740879;
	Wed, 28 Dec 2022 18:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C24740879
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4N-zxCRhBxb; Wed, 28 Dec 2022 18:13:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 68EAA40878;
	Wed, 28 Dec 2022 18:13:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68EAA40878
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01943C0071;
	Wed, 28 Dec 2022 18:13:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33930C002D
 for <bridge@lists.linux-foundation.org>; Wed, 28 Dec 2022 18:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEFF0608D8
 for <bridge@lists.linux-foundation.org>; Wed, 28 Dec 2022 18:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEFF0608D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ggY4MxaPqqL for <bridge@lists.linux-foundation.org>;
 Wed, 28 Dec 2022 18:13:49 +0000 (UTC)
X-Greylist: delayed 00:08:47 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B303460759
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B303460759
 for <bridge@lists.linux-foundation.org>; Wed, 28 Dec 2022 18:13:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1E21E40A19
 for <bridge@lists.linux-foundation.org>; Wed, 28 Dec 2022 19:04:57 +0100 (CET)
Date: Wed, 28 Dec 2022 19:04:55 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <Y6yFR2zS/A57Zui2@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Last-TLS-Session-Version: TLSv1.3
Subject: [Bridge] MLD proxying between bridge ports, recommendations?
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

I know that there are implementations for IGMP/MLD proxies between
two interfaces to "pseudo bridge" IGMP/MLD and multicast data
(both itnerfaces have distinct broadcast domains and are routing
unicast packets on layer 3, the IGMP/MLD proxy carries IGMP/MLD
and multicast data over). Like the igmpproxy [0] tool, which is
supported in OpenWrt [1]. And maybe mcproxy [2] (I've never tried
this one, but seems to be based on RFC4605 [3]?).

But I've been wondering, are there vendors who have implemented
IGMP/MLD proxying on their bridges/switches between ports? What I
would like to do with the Linux bridge in particular is:

1) Use the built-in MLD querier towards downstream ports with a
fast querier interval (20-30 seconds? to query mobile wifi clients).
2) Have the bridge respond with one aggregated MLDv2 Report towards a
dedicated upstream port, where an external querier would query
with a slower than default interval.
3) Be able to filter/blacklist/whitelist certain IP multicast ranges
from the proxied report. (I'd have the weird use-case of filtering
out link-local IPv6 multicast ranges and only allowing routable
ones).

Other interesting features / use-cases could be to contain
IGMPv2/MLDv1 to specific ports, to keep the rest of the network on
IGMPv3/MLDv2 and to convert report versions between them. Or to
reduce the overhead of redundantly forwarded multicast groups
you'd otherwise currently have with MLDv2 (no report suppression).

Would it make sense to implement such an IGMP/MLD proxying
mechanism in the Linux bridge?

Other than proxying and tuning querier intervals, is anyone aware
of any other mechanisms to reduce MLD overhead in large broadcast
domains? (large would be about 1000 Linux hosts with bridges +
2000 bridged-in, external hosts sharing a broadcast domain)

Regards, Linus

[0]: https://github.com/pali/igmpproxy
[1]: https://openwrt.org/docs/guide-user/network/wan/udp_multicast
[2]: https://github.com/mcproxy/mcproxy
[3]: http://tools.ietf.org/html/rfc4605
