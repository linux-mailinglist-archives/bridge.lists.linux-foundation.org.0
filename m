Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F40CD7CD50E
	for <lists.bridge@lfdr.de>; Wed, 18 Oct 2023 09:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40B7D409B3;
	Wed, 18 Oct 2023 07:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40B7D409B3
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=ZOnGh8go
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psmLOq2m7nZo; Wed, 18 Oct 2023 07:05:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5EB4B404E2;
	Wed, 18 Oct 2023 07:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EB4B404E2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 994EEC008C;
	Wed, 18 Oct 2023 07:05:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12C05C0032
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 07:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D327840463
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 07:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D327840463
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=ZOnGh8go
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6g8vLcW7RrU for <bridge@lists.linux-foundation.org>;
 Wed, 18 Oct 2023 07:05:15 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [212.42.244.94])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2866140165
 for <bridge@lists.linux-foundation.org>; Wed, 18 Oct 2023 07:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2866140165
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Wed, 18 Oct 2023 09:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1697612711; bh=7duyYS4uKMmrIiJWnBLeesAW+mofu1JAMbtCZUOvg80=;
 h=From:Date:Subject:To:Cc:From;
 b=ZOnGh8gou7ff4faNHPcPaZ1D16L+X1M0G9DSEGMgYsv5yHt9Ct5UXomH2UpkgPVWD
 u2hwo0keqMABgOFowcHebKBA+oX+Hq3qGDEIPP/pcF4kkT2AWxqJgFAVGcQh8HIArr
 2JrHEJmi32i/LAfgNQOPjRBoEoqqizv/PC7tl2Fg=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id 80F4B81FE6;
 Wed, 18 Oct 2023 09:05:10 +0200 (CEST)
Date: Wed, 18 Oct 2023 09:04:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231018-fdb_limit-v5-1-7ca3b3eb7c1f@avm.de>
X-B4-Tracking: v=1; b=H4sIAIqDL2UC/02NwQ6CMBAFf4Xs2ZpSCgon/8MQU9qtbCKFtLXBE
 P7dBi8eJ28yb4OAnjBAV2zgMVGg2WWoTwXoUbknMjKZQXBR8ZbXzJrh8aKJIlMaS9lcdKOuErK
 /eLS0Hq070OLnd0TBHK4R+jyPFOLsP8dTkof0i5btXzRJVrJBGmG0NLbi9qbSdDYI/b7vXyqTH
 IauAAAA
To: David Ahern <dsahern@gmail.com>, Roopa Prabhu <roopa@nvidia.com>, 
 Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697612682; l=5381;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=7duyYS4uKMmrIiJWnBLeesAW+mofu1JAMbtCZUOvg80=;
 b=zv1GAGzIqwcXgxBPRXjOTzIz3Lc/894YncC79u++wRhb82LuxnQhc+ZKtIRnt7KFWGMX3WSso
 8HRZ/LSTZv+BSOixJ4x16pfBETF+eEzQSa6vZRO58fzks89qC6eW/ES
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1697612710-7862642D-443DAE41/0/0
X-purgate-type: clean
X-purgate-size: 5383
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>
Subject: [Bridge] [PATCH iproute2-next v5] iplink: bridge: Add support for
 bridge FDB learning limits
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Support setting the FDB limit through ip link. The arguments is:
 - fdb_max_learned: A 32-bit unsigned integer specifying the maximum
                    number of learned FDB entries, with 0 disabling
                    the limit.

Also support reading back the current number of learned FDB entries in
the bridge by this count. The returned value's name is:
 - fdb_n_learned: A 32-bit unsigned integer specifying the current number
                  of learned FDB entries.

Example:

 # ip -d -j -p link show br0
[ {
...
        "linkinfo": {
            "info_kind": "bridge",
            "info_data": {
...
                "fdb_n_learned": 2,
                "fdb_max_learned": 0,
...
            }
        },
...
    } ]
 # ip link set br0 type bridge fdb_max_learned 1024
 # ip -d -j -p link show br0
[ {
...
        "linkinfo": {
            "info_kind": "bridge",
            "info_data": {
...
                "fdb_n_learned": 2,
                "fdb_max_learned": 1024,
...
            }
        },
...
    } ]

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
The corresponding kernel changes are in net-next.git as commit
ddd1ad68826d ("net: bridge: Add netlink knobs for number / max learned
FDB entries").
---
Changes in v5:
 - Removed the RFC status again, as the kernel changes landed.
 - Link to v4: https://lore.kernel.org/r/20230919-fdb_limit-v4-1-b4d2dc4df30f@avm.de

Changes in v4:
 - Removed _entries from the names. (from review)
 - Removed the UAPI change, to be synced from linux separately by the
   maintainer. (from review)
   For local testing e.g. `make CCOPTS="-O2 -pipe
   -I${path_to_dev_kernel_headers}"` works as a workaround.
 - Downgraded to an RFC until the kernel changes land.
 - Link to v3: https://lore.kernel.org/netdev/20230905-fdb_limit-v3-1-34bb124556d8@avm.de/

Changes in v3:
 - Properly split the net-next and iproute2-next threads. (from review)
 - Changed to *_n_* instead of *_cur_*. (from review)
 - Use strcmp() instead of matches(). (from review)
 - Made names in code and documentation consistent. (from review)
 - Various documentation fixes. (from review)
 - Link to v2: https://lore.kernel.org/netdev/20230619071444.14625-1-jnixdorf-oss@avm.de/

Changes in v2:
 - Sent out the first corresponding iproute2 patches.
 - Link to v1: https://lore.kernel.org/netdev/20230515085046.4457-1-jnixdorf-oss@avm.de/
---
 ip/iplink_bridge.c    | 21 +++++++++++++++++++++
 man/man8/ip-link.8.in | 10 ++++++++++
 2 files changed, 31 insertions(+)

diff --git a/ip/iplink_bridge.c b/ip/iplink_bridge.c
index 462075295308..6b70ffbb6f5f 100644
--- a/ip/iplink_bridge.c
+++ b/ip/iplink_bridge.c
@@ -34,6 +34,7 @@ static void print_explain(FILE *f)
 		"		  [ group_fwd_mask MASK ]\n"
 		"		  [ group_address ADDRESS ]\n"
 		"		  [ no_linklocal_learn NO_LINKLOCAL_LEARN ]\n"
+		"		  [ fdb_max_learned FDB_MAX_LEARNED ]\n"
 		"		  [ vlan_filtering VLAN_FILTERING ]\n"
 		"		  [ vlan_protocol VLAN_PROTOCOL ]\n"
 		"		  [ vlan_default_pvid VLAN_DEFAULT_PVID ]\n"
@@ -168,6 +169,14 @@ static int bridge_parse_opt(struct link_util *lu, int argc, char **argv,
 				bm.optval |= no_ll_learn_bit;
 			else
 				bm.optval &= ~no_ll_learn_bit;
+		} else if (strcmp(*argv, "fdb_max_learned") == 0) {
+			__u32 fdb_max_learned;
+
+			NEXT_ARG();
+			if (get_u32(&fdb_max_learned, *argv, 0))
+				invarg("invalid fdb_max_learned", *argv);
+
+			addattr32(n, 1024, IFLA_BR_FDB_MAX_LEARNED, fdb_max_learned);
 		} else if (matches(*argv, "fdb_flush") == 0) {
 			addattr(n, 1024, IFLA_BR_FDB_FLUSH);
 		} else if (matches(*argv, "vlan_default_pvid") == 0) {
@@ -544,6 +553,18 @@ static void bridge_print_opt(struct link_util *lu, FILE *f, struct rtattr *tb[])
 	if (tb[IFLA_BR_GC_TIMER])
 		_bridge_print_timer(f, "gc_timer", tb[IFLA_BR_GC_TIMER]);
 
+	if (tb[IFLA_BR_FDB_N_LEARNED])
+		print_uint(PRINT_ANY,
+			   "fdb_n_learned",
+			   "fdb_n_learned %u ",
+			   rta_getattr_u32(tb[IFLA_BR_FDB_N_LEARNED]));
+
+	if (tb[IFLA_BR_FDB_MAX_LEARNED])
+		print_uint(PRINT_ANY,
+			   "fdb_max_learned",
+			   "fdb_max_learned %u ",
+			   rta_getattr_u32(tb[IFLA_BR_FDB_MAX_LEARNED]));
+
 	if (tb[IFLA_BR_VLAN_DEFAULT_PVID])
 		print_uint(PRINT_ANY,
 			   "vlan_default_pvid",
diff --git a/man/man8/ip-link.8.in b/man/man8/ip-link.8.in
index 7365d0c6b14f..e82b2dbb0070 100644
--- a/man/man8/ip-link.8.in
+++ b/man/man8/ip-link.8.in
@@ -1630,6 +1630,8 @@ the following additional arguments are supported:
 ] [
 .BI no_linklocal_learn " NO_LINKLOCAL_LEARN "
 ] [
+.BI fdb_max_learned " FDB_MAX_LEARNED "
+] [
 .BI vlan_filtering " VLAN_FILTERING "
 ] [
 .BI vlan_protocol " VLAN_PROTOCOL "
@@ -1741,6 +1743,14 @@ or off
 When disabled, the bridge will not learn from link-local frames (default:
 enabled).
 
+.BI fdb_max_learned " FDB_MAX_LEARNED "
+- set the maximum number of learned FDB entries. If
+.RI ( FDB_MAX_LEARNED " == 0) "
+the feature is disabled. Default is
+.BR 0 .
+.I FDB_MAX_LEARNED
+is a 32bit unsigned integer.
+
 .BI vlan_filtering " VLAN_FILTERING "
 - turn VLAN filtering on
 .RI ( VLAN_FILTERING " > 0) "

---
base-commit: 582453de1b65e9eada669d9aea4aca88509e7658
change-id: 20230905-fdb_limit-ace1467c6a84

Best regards,
-- 
Johannes Nixdorf <jnixdorf-oss@avm.de>

