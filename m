Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1AC45DC07
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3D1861BF2;
	Thu, 25 Nov 2021 14:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JzHJYD7MauyW; Thu, 25 Nov 2021 14:09:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8829D60AA1;
	Thu, 25 Nov 2021 14:09:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53752C002F;
	Thu, 25 Nov 2021 14:09:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 258DFC000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B217240927
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-dJ-aLglcjj for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1CD740907
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:28 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id w1so26289477edc.6
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MKmLffX+pWU4FoGNzKjM0jOIw2aMhpVyY+HZhQGjnqg=;
 b=vd141DjmUJYTiCdsz/2wy8xA6ToZUseMArv0IPAnwB33JcVmD1P7Egx4igtP6nHk7I
 L63haVNgajhvJcUOyK79pW4cXv5dDb2diGLW/ginf6KSt/Trk2ZsK0fnfAJ9NeoDaiTE
 ULVHgWXIxT9MSFApIgDJ5TnzBEgbKTxkaejeH9VYisrleBVxr+o8/Qy1rjaf/84mys6M
 ypxIMEZwowA6JgNik8J77MaXrviVEf/ZurQhQ9+tshwSGkwaYvbnf3uLvmx03CSAIWAo
 gMsyj/XBfkSRLA/qTUBqGxgpFmHLEs9r/Udp/Wao1WiLNkaS9jaAF9FZPeQx3xJFxCuD
 TbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MKmLffX+pWU4FoGNzKjM0jOIw2aMhpVyY+HZhQGjnqg=;
 b=nX9Dcxt3fVztLYZXkFUHhVYGhUhcBZBEoskJCaNPd29/ErfWfDZZhwshstQl0PwpSo
 68tSEIENDD3F2voYZ7hawMWQ6Mwv41V2ilrPl2b+gKaWTjKlvEftsDjS9awwAntf3PWw
 f/kP5JbY64qigK2RJkAZAR6H97lpA6pQ1SlQ5UFEQq9dKzZWvzTJouC7AaTztzySC4FQ
 PHPlg0J5aFIwuwVnVUQN0Y3O2hg7hgydEhb9qLoAi1WkTlYv8q82NIrIHp6CQVqT8lzy
 BBN0nejW4XzURvEHilPysFq9FDD93/8DXEtDYh3crhilYaCY9yphwqxMGsFT14gtpnSM
 0/fA==
X-Gm-Message-State: AOAM5305FmxgX0SapyVXbo5hx7yc36hWbfhdSzsoXXs9H5kZpIBV1/HP
 bzl3eytQFRgwi1lLdXfA5uWReZ1WU9DzpFUQ
X-Google-Smtp-Source: ABdhPJwniuJBKU+PVv6obhV3udo2IGHvk1LZKXEkE/eNwX+erbMBETrUkSC8jFxwpI/TeCqrolsh4A==
X-Received: by 2002:a50:e683:: with SMTP id z3mr39673718edm.206.1637849367088; 
 Thu, 25 Nov 2021 06:09:27 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:26 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:56 +0200
Message-Id: <20211125140858.3639139-9-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 08/10] selftests: net: bridge: add vlan
	mcast query and query response interval tests
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Add tests which change the new per-vlan mcast_query_interval and verify
the new value is in effect, also add a test to change
mcast_query_response_interval's value.

TEST: Vlan mcast_query_interval global option default value         [ OK ]
TEST: Vlan 10 mcast_query_interval option changed to 200            [ OK ]
TEST: Vlan mcast_query_response_interval global option default value   [ OK ]
TEST: Vlan 10 mcast_query_response_interval option changed to 200   [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 51 ++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index 9a68d56fd74c..fbc7f5045b26 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
 	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test \
-	   vlmc_querier_intvl_test"
+	   vlmc_querier_intvl_test vlmc_query_intvl_test vlmc_query_response_intvl_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -422,6 +422,55 @@ vlmc_querier_intvl_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier_interval 25500
 }
 
+vlmc_query_intvl_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_query_interval == 12500) " &>/dev/null
+	check_err $? "Wrong default mcast_query_interval global vlan option value"
+	log_test "Vlan mcast_query_interval global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_count 0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_interval 200
+	check_err $? "Could not set mcast_query_interval in vlan 10"
+	# 1 is sent immediately, then 2 more in the next 5 seconds
+	vlmc_check_query igmp 2 $swp1 3 5
+	check_err $? "Wrong number of tagged IGMPv2 general queries sent"
+	log_test "Vlan 10 mcast_query_interval option changed to 200"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_startup_query_count 2
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_interval 12500
+}
+
+vlmc_query_response_intvl_test()
+{
+	RET=0
+	local goutput=`bridge -j vlan global show`
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10)" &>/dev/null
+	check_err $? "Could not find vlan 10's global options"
+
+	echo -n $goutput |
+		jq -e ".[].vlans[] | select(.vlan == 10 and \
+					    .mcast_query_response_interval == 1000) " &>/dev/null
+	check_err $? "Wrong default mcast_query_response_interval global vlan option value"
+	log_test "Vlan mcast_query_response_interval global option default value"
+
+	RET=0
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_response_interval 200
+	check_err $? "Could not set mcast_query_response_interval in vlan 10"
+	log_test "Vlan 10 mcast_query_response_interval option changed to 200"
+
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_response_interval 1000
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1

