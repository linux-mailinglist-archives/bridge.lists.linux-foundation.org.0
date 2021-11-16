Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECA5452EE2
	for <lists.bridge@lfdr.de>; Tue, 16 Nov 2021 11:19:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7243A607CE;
	Tue, 16 Nov 2021 10:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GS8P2ydf1Yi9; Tue, 16 Nov 2021 10:19:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 00C9660775;
	Tue, 16 Nov 2021 10:19:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AADD9C0032;
	Tue, 16 Nov 2021 10:19:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1599EC0012
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 10:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12025400AB
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 10:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="R6XnQ837";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="kfQhV4D6"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzIYycvu_FvB for <bridge@lists.linux-foundation.org>;
 Tue, 16 Nov 2021 10:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D2C54043F
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 10:19:28 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1637057965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=tmef5BxDew8mQ5tumKAD4FZtWpS8npOjZyM1kVOj4Uw=;
 b=R6XnQ837cXV36YauZrLhJ7mcb4dB7DxaDgpY0E6yCJ+Bpj/gRX3fZlpqj5bcgDhjcrjM8g
 tMLNGBSA9m9llridhOs+LhwgT34keT3P3EEDSvUxXUYqPm5ql5DZSxHF7alAvBf3ZP8KZm
 /WrQDwk9Q+2kT3WPB7kXCdClSpID5dDncjttgbDnpO7EzyHIyGEHdgbuyaHq5Db7kTk4RO
 L/camCVyYNnpcc2/EU+4Pp7spLE0+n7evkoblGPnD9Vg6l9lcoqHLKFfrBxcyIopYBBPzI
 7a3iGZFV4kDH6Lyl0ryTXkqly1AJqWiu6yctMYhVOHD/4la7KMZqSgwzpgd9cw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1637057965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=tmef5BxDew8mQ5tumKAD4FZtWpS8npOjZyM1kVOj4Uw=;
 b=kfQhV4D6ptRcHR4h21mtVX0dnQLgp901RfzVER4WMw/ZNMjdSKY2JkdIoTdAqpK9Cu7Il7
 9AikHsembFp1WWCQ==
To: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Date: Tue, 16 Nov 2021 11:19:24 +0100
Message-ID: <871r3gbdxv.fsf@kurt>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] RFC: PTP Boundary Clock over UDPv4/UDPv6 on Linux bridge
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm currently trying to setup a PTP Boundary Clock over UDPv4 or UDPv6
on top of a switch using a Linux bridge. It works fine using PTP Layer 2
transport, but not for UDP. I'm wondering whether this is supported
using Linux or if I'm doing something wrong.

My setup looks like this:

Bridge (DSA):

|$ ip link set eth0 up
|$ ip link set lan0 up
|$ ip link set lan1 up
|$ ip link add name br0 type bridge
|$ ip link set dev lan0 master br0
|$ ip link set dev lan1 master br0
|$ ip link set br0 up
|$ dhclient br0

PTP:

|$ ptp4l -4 -i lan0 -i lan1 --tx_timestamp_timeout=3D40 -m

It seems like ptp4l cannot receive any PTP messages. Tx works fine.

The following hack solves the problem for me. However, I'm not sure
whether that's the correct approach or not. Any opinions, ideas,
comments?

Thanks,
Kurt

|From 2e8b429b3ebabda8e81693b9704dbe5e5205ab09 Mon Sep 17 00:00:00 2001
|From: Kurt Kanzenbach <kurt@linutronix.de>
|Date: Wed, 4 Aug 2021 09:33:12 +0200
|Subject: [PATCH] net: bridge: input: Handle PTP over UDPv4 and UDPv6
|
|PTP is considered management traffic. A time aware switch should intercept=
 all
|PTP messages and handle them accordingly. The corresponding Linux setup is=
 like
|this:
|
|         +-- br0 --+
|        / /   |     \
|       / /    |      \
|      /  |    |     / \
|     /   |    |    /   \
|   swp0 swp1 swp2 swp3 swp4
|
|ptp4l runs on all individual switch ports and needs full control over send=
ing
|and receiving messages on these ports.
|
|However, the bridge code treats PTP messages over UDP transport as regular=
 IP
|messages and forwards them to br0. This way, the running ptp4l instances c=
annot
|receive these frames on the individual switch port interfaces.
|
|Fix it by intercepting PTP UDP traffic in the bridge code and pass them to=
 the
|regular network processing.
|
|Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
|---
| net/bridge/br_input.c | 13 +++++++++++++
| 1 file changed, 13 insertions(+)
|
|diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
|index b50382f957c1..4e12be70a003 100644
|--- a/net/bridge/br_input.c
|+++ b/net/bridge/br_input.c
|@@ -271,6 +271,13 @@ static int br_process_frame_type(struct net_bridge_po=
rt *p,
| 	return 0;
| }
|=20
|+static const unsigned char ptp_ip_destinations[][ETH_ALEN] =3D {
|+	{ 0x01, 0x00, 0x5e, 0x00, 0x01, 0x81 }, /* IPv4 PTP */
|+	{ 0x01, 0x00, 0x5e, 0x00, 0x00, 0x6b }, /* IPv4 P2P */
|+	{ 0x33, 0x33, 0x00, 0x00, 0x01, 0x81 }, /* IPv6 PTP */
|+	{ 0x33, 0x33, 0x00, 0x00, 0x00, 0x6b }, /* IPv6 P2P */
|+};
|+
| /*
|  * Return NULL if skb is handled
|  * note: already called with rcu_read_lock
|@@ -280,6 +287,7 @@ static rx_handler_result_t br_handle_frame(struct sk_b=
uff **pskb)
| 	struct net_bridge_port *p;
| 	struct sk_buff *skb =3D *pskb;
| 	const unsigned char *dest =3D eth_hdr(skb)->h_dest;
|+	int i;
|=20
| 	if (unlikely(skb->pkt_type =3D=3D PACKET_LOOPBACK))
| 		return RX_HANDLER_PASS;
|@@ -360,6 +368,11 @@ static rx_handler_result_t br_handle_frame(struct sk_=
buff **pskb)
| 	if (unlikely(br_process_frame_type(p, skb)))
| 		return RX_HANDLER_PASS;
|=20
|+	/* Check for PTP over UDPv4 or UDPv6. */
|+	for (i =3D 0; i < ARRAY_SIZE(ptp_ip_destinations); ++i)
|+		if (ether_addr_equal(ptp_ip_destinations[i], dest))
|+			return RX_HANDLER_PASS;
|+
| forward:
| 	switch (p->state) {
| 	case BR_STATE_FORWARDING:
|--=20
|2.30.2


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmGThawTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpqtJEAC/5q6nEuYpfxhRoSb/OvMHUEXIF+hR
IQFlPaxHAiar+LxWmxRF5O8We/YfpZNSDwj5OXhquPxYsfLLQzINB8RRBkagRgtk
oYOVlluR68iSQhpiG0SYMjlaGE4I0RSgHT2I+uVn2pWYhNznZrt1Nu8h+OMJfsgV
wATbnOWD33YiefUdl8eW43L2z0fIXuxRA5ad2SImvBSsE3gsZi10sF1BVowPmL4j
Ch3b6dNRU653455Q/M8ZJ0hEGIisblSVvV0msyjWgyLCtnPRHWXi1AmczqopODLQ
a9nPiPKTjY0Lu9dGhCPuM4TgZZrNJYuBUHBy6Twg4DBQp1I8DKI4esECH3g6vpFA
H+72cLplqPpIXfnF3C/d6NY7nLITVS5zKlvyCIbz0Igz7TCH0JzEJ9jMMY+zr4Cv
yp4/IoCqBicz1ZQN7eA4LnTjslzGPdQVcfWV7UNBbqtZ+AQ7pN6vhvIiLrhb09PI
woFC9lZP24ZV5a59EcbLbGjhHPz1BBu8jinP7FYXdbn9wsTzrk6aBPmr1u/djoN3
qJOhxxukultUyXiu9n9nWutoD+8LPTWWRNHFdcG4uzNd0UOQ4wKeVcSmgd4rKTFT
YnpEqjRm3WGFe5yQsrJb7J4ffLYa5o5R9XDD7k+WM60UbOoPjpSY7m7v0euuxBr5
DDN0N+s+Hpnayg==
=5oM/
-----END PGP SIGNATURE-----
--=-=-=--
