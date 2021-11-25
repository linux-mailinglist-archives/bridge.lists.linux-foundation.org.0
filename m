Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D01E245DC04
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8849B61BED;
	Thu, 25 Nov 2021 14:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxshuE3jbsel; Thu, 25 Nov 2021 14:09:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1AD4560AA1;
	Thu, 25 Nov 2021 14:09:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9CDBC000A;
	Thu, 25 Nov 2021 14:09:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4807C0012
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2EB6825DC
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEhTXIwXk2kA for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09D63827D9
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:29 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id e3so26237431edu.4
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rsXnOvd5nwBThD2qTg9D1pYE4X40JBYkDShPIF1srm0=;
 b=AuWU0dI8dq+Am1E5pw+6CORB6nijQMNR5dkWuKAcGZOilRKprNir0VkqxJGMJsJniP
 SMz3WfKNtQzQK03zbaRkGVGQFeI0FpCwG0YIlzCs2tlcJ5YnBDwrrtJcrndqJu/KUlZV
 0CEAx/HfVOIwn8WOr1EPnpOUGyVAvUS3yrG873SuxG0UMYGBqKTV0YGIS/9AvFVVL1h4
 ZATIIMEAn/teDTyn9+2uTH24RCY5GUs9mmXkeHwavtsgMdQvjXemrPxP0LmriDMldGJH
 wba/rZ7bbwVOtkfyneUtm2EPl2PscriY8HesZtwgeQCGs8BweoNz6dGsYH2Amubuoa12
 gxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rsXnOvd5nwBThD2qTg9D1pYE4X40JBYkDShPIF1srm0=;
 b=Fnx0AhTwHG9IDcUypmA8BWYSczwXfp6n1hu1f9KHBIXis4YD+OjzTXbl2qaLvMZgzI
 EzKsBKN5XMJ+UHCq7YDjQ27VfgOr3Mv3ljcqZm9HBlEPFXaOxa5gB9So9x5DjQGkWiPZ
 k9kxEcNooctWXUO+Uj2L5V/X10yodG/pvVh3/DkJYZV40JKCV/HCX+WiZaVGWc/E0X5v
 PwyuVGv4RpegXV4mr6CQtdDAiuoTuBrv9Njr75VI3Qxe8RoVeveA2V/bUQyDNddeCz2o
 ccMIYIGqUhYBx3vBLsdHZ6Z2EFAyauOjn0AM9pc5vWBJHGqFTQ+tAk0VD6p1oMpquULl
 lsKw==
X-Gm-Message-State: AOAM533e8ZpU6Zd9urw/8MYc4AD84aVQJcyxSNDGJVRfQ9j2QXJOGk2V
 ZT+RvD2xAmSz+iFudFvzB1sDSA==
X-Google-Smtp-Source: ABdhPJxblp2v2lk/tLcjsRDEZHAcXI6hscD+GNZOSNFDOZb7G4Ir17j6WzYkMv1keK3waViyJETafQ==
X-Received: by 2002:a05:6402:40c3:: with SMTP id
 z3mr38076605edb.203.1637849368029; 
 Thu, 25 Nov 2021 06:09:28 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:27 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:57 +0200
Message-Id: <20211125140858.3639139-10-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211125140858.3639139-1-razor@blackwall.org>
References: <20211125140858.3639139-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 09/10] selftests: net: bridge: add vlan
	mcast_router tests
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

Add tests for the new per-port/vlan mcast_router option, verify that
unknown multicast packets are flooded only to router ports.

TEST: Port vlan 10 option mcast_router default value                [ OK ]
TEST: Port vlan 10 mcast_router option changed to 2                 [ OK ]
TEST: Flood unknown vlan multicast packets to router port only      [ OK ]

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../net/forwarding/bridge_vlan_mcast.sh       | 54 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
index fbc7f5045b26..898a70f4d226 100755
--- a/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh
@@ -3,7 +3,8 @@
 
 ALL_TESTS="vlmc_control_test vlmc_querier_test vlmc_igmp_mld_version_test \
 	   vlmc_last_member_test vlmc_startup_query_test vlmc_membership_test \
-	   vlmc_querier_intvl_test vlmc_query_intvl_test vlmc_query_response_intvl_test"
+	   vlmc_querier_intvl_test vlmc_query_intvl_test vlmc_query_response_intvl_test \
+	   vlmc_router_port_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -471,6 +472,57 @@ vlmc_query_response_intvl_test()
 	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_response_interval 1000
 }
 
+vlmc_router_port_test()
+{
+	RET=0
+	local goutput=`bridge -j -d vlan show`
+	echo -n $goutput |
+		jq -e ".[] | select(.ifname == \"$swp1\" and \
+				    .vlans[].vlan == 10)" &>/dev/null
+	check_err $? "Could not find port vlan 10's options"
+
+	echo -n $goutput |
+		jq -e ".[] | select(.ifname == \"$swp1\" and \
+				    .vlans[].vlan == 10 and \
+				    .vlans[].mcast_router == 1)" &>/dev/null
+	check_err $? "Wrong default port mcast_router option value"
+	log_test "Port vlan 10 option mcast_router default value"
+
+	RET=0
+	bridge vlan set vid 10 dev $swp1 mcast_router 2
+	check_err $? "Could not set port vlan 10's mcast_router option"
+	log_test "Port vlan 10 mcast_router option changed to 2"
+
+	RET=0
+	tc filter add dev $swp1 egress pref 10 prot 802.1Q \
+		flower vlan_id 10 vlan_ethtype ipv4 dst_ip 239.1.1.1 ip_proto udp action pass
+	tc filter add dev $swp2 egress pref 10 prot 802.1Q \
+		flower vlan_id 10 vlan_ethtype ipv4 dst_ip 239.1.1.1 ip_proto udp action pass
+	bridge vlan set vid 10 dev $swp2 mcast_router 0
+	# we need to enable querier and disable query response interval to
+	# make sure packets are flooded only to router ports
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_querier 1 \
+					      mcast_query_response_interval 0
+	bridge vlan add vid 10 dev br0 self
+	sleep 1
+	mausezahn br0 -Q 10 -c 10 -p 128 -b 01:00:5e:01:01:01 -B 239.1.1.1 \
+			-t udp "dp=1024" &>/dev/null
+	local swp1_tcstats=$(tc_rule_stats_get $swp1 10 egress)
+	if [[ $swp1_tcstats != 10 ]]; then
+		check_err 1 "Wrong number of vlan 10 multicast packets flooded"
+	fi
+	local swp2_tcstats=$(tc_rule_stats_get $swp2 10 egress)
+	check_err $swp2_tcstats "Vlan 10 multicast packets flooded to non-router port"
+	log_test "Flood unknown vlan multicast packets to router port only"
+
+	tc filter del dev $swp2 egress pref 10
+	tc filter del dev $swp1 egress pref 10
+	bridge vlan del vid 10 dev br0 self
+	bridge vlan global set vid 10 dev br0 mcast_snooping 1 mcast_query_response_interval 1000
+	bridge vlan set vid 10 dev $swp2 mcast_router 1
+	bridge vlan set vid 10 dev $swp1 mcast_router 1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.31.1

