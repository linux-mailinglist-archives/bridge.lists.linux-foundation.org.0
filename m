Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBDE45DBFA
	for <lists.bridge@lfdr.de>; Thu, 25 Nov 2021 15:09:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0BBF61BDF;
	Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blGTRwnbVAdk; Thu, 25 Nov 2021 14:09:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8C418615F2;
	Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4DD82C002F;
	Thu, 25 Nov 2021 14:09:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 873B9C000A
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7438340542
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fH3IeeoHiWql for <bridge@lists.linux-foundation.org>;
 Thu, 25 Nov 2021 14:09:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26005401FF
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 14:09:15 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id t5so26450087edd.0
 for <bridge@lists.linux-foundation.org>; Thu, 25 Nov 2021 06:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBPQNvEnJJLckxCSGc4J1L8KyXXtbTMRUV/7fFvFRTE=;
 b=tUh/OpvG7z1rjD7dxAfgfm1IICN1lrCRRj/ZQfgIIB/2U8cf7uPLBiusc412bdcK0+
 XeQkPBcLgEmqVIaFlewufk1pI0ldkn4GtbqJH/qTRXbMm6OCpOTUjYP8cYclPqhT6LTs
 f6sK2aO8xQsGoFciaI1XV6gkvkxMc1R5j39wXpj7jcphJBchGEDD+XLuLWlyq9D13zxs
 c63PstJyt49FcQWI8Ewv0PN3/4tbSowgAtwTLnDKW2XztthDsha5+q6VRnTgHEGVShR+
 HdA3YHrpLs1vdb+G83LwfLTnc6pW4PwGk1GlxKZZbA5K/sezuLOgI7rGGtx8zF21YwYx
 WDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gBPQNvEnJJLckxCSGc4J1L8KyXXtbTMRUV/7fFvFRTE=;
 b=W1dw1xEdQR9f0u+LY6+1Rblm5/4Nn54HaJXGGoL5YhXY9NHUDY8zAE+QgiEmAa+WbL
 55qsWHA11y8a2EiLREUw+Eusepp97QOuPc4gsGFP5vtuksQ4BmXsweBOnkHP9OKtJu+X
 C+BCscnaN3Lud2YngZDTZkF9fuAy2jVY9LnnCn5IBVmY0DL4CaYfx/o9OEyttG93v3Qe
 q1MnoQObkPp4u+dl8CgL8HYhxZh3WwlHwj64orITeycmlqyRoZJHIT8XqvronPmE8Sda
 DU96lRgSwCKP3jslTqINeJpweEULVcBzZSkMPYOYuPtlITWt00OHZR1ole07pAw1g1nY
 cnyg==
X-Gm-Message-State: AOAM5303eeKbEkuHKRNX25nPPBp5rPNliAN3O62ohFh7xFBdnstJSg38
 dy8A0bNvp+41Ox/bpfsKZcmCZQ==
X-Google-Smtp-Source: ABdhPJxtzljFWtJbmwjKGq0+TnPcIMH50jUxSx4pgGj6rStfSLc61ZKboN0ua317zV3hJo63HStbGw==
X-Received: by 2002:a17:907:7da8:: with SMTP id
 oz40mr31378937ejc.105.1637849353806; 
 Thu, 25 Nov 2021 06:09:13 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id sc7sm1889863ejc.50.2021.11.25.06.09.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 06:09:13 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 25 Nov 2021 16:08:48 +0200
Message-Id: <20211125140858.3639139-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ivecera@redhat.com, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 00/10] selftests: net: bridge: vlan
	multicast tests
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

Hi,
This patch-set adds selftests for the new vlan multicast options that
were recently added. Most of the tests check for default values,
changing options and try to verify that the changes actually take
effect. The last test checks if the dependency between vlan_filtering
and mcast_vlan_snooping holds. The rest are pretty self-explanatory.

TEST: Vlan multicast snooping enable                                [ OK ]
TEST: Vlan global options existence                                 [ OK ]
TEST: Vlan mcast_snooping global option default value               [ OK ]
TEST: Vlan 10 multicast snooping control                            [ OK ]
TEST: Vlan mcast_querier global option default value                [ OK ]
TEST: Vlan 10 multicast querier enable                              [ OK ]
TEST: Vlan 10 tagged IGMPv2 general query sent                      [ OK ]
TEST: Vlan 10 tagged MLD general query sent                         [ OK ]
TEST: Vlan mcast_igmp_version global option default value           [ OK ]
TEST: Vlan mcast_mld_version global option default value            [ OK ]
TEST: Vlan 10 mcast_igmp_version option changed to 3                [ OK ]
TEST: Vlan 10 tagged IGMPv3 general query sent                      [ OK ]
TEST: Vlan 10 mcast_mld_version option changed to 2                 [ OK ]
TEST: Vlan 10 tagged MLDv2 general query sent                       [ OK ]
TEST: Vlan mcast_last_member_count global option default value      [ OK ]
TEST: Vlan mcast_last_member_interval global option default value   [ OK ]
TEST: Vlan 10 mcast_last_member_count option changed to 3           [ OK ]
TEST: Vlan 10 mcast_last_member_interval option changed to 200      [ OK ]
TEST: Vlan mcast_startup_query_interval global option default value   [ OK ]
TEST: Vlan mcast_startup_query_count global option default value    [ OK ]
TEST: Vlan 10 mcast_startup_query_interval option changed to 100    [ OK ]
TEST: Vlan 10 mcast_startup_query_count option changed to 3         [ OK ]
TEST: Vlan mcast_membership_interval global option default value    [ OK ]
TEST: Vlan 10 mcast_membership_interval option changed to 200       [ OK ]
TEST: Vlan 10 mcast_membership_interval mdb entry expire            [ OK ]
TEST: Vlan mcast_querier_interval global option default value       [ OK ]
TEST: Vlan 10 mcast_querier_interval option changed to 100          [ OK ]
TEST: Vlan 10 mcast_querier_interval expire after outside query     [ OK ]
TEST: Vlan mcast_query_interval global option default value         [ OK ]
TEST: Vlan 10 mcast_query_interval option changed to 200            [ OK ]
TEST: Vlan mcast_query_response_interval global option default value   [ OK ]
TEST: Vlan 10 mcast_query_response_interval option changed to 200   [ OK ]
TEST: Port vlan 10 option mcast_router default value                [ OK ]
TEST: Port vlan 10 mcast_router option changed to 2                 [ OK ]
TEST: Flood unknown vlan multicast packets to router port only      [ OK ]
TEST: Disable multicast vlan snooping when vlan filtering is disabled   [ OK ]

Thanks,
 Nik

Nikolay Aleksandrov (10):
  selftests: net: bridge: add vlan mcast snooping control test
  selftests: net: bridge: add vlan mcast querier test
  selftests: net: bridge: add vlan mcast igmp/mld version tests
  selftests: net: bridge: add vlan mcast_last_member_count/interval
    tests
  selftests: net: bridge: add vlan mcast_startup_query_count/interval
    tests
  selftests: net: bridge: add vlan mcast_membership_interval test
  selftests: net: bridge: add vlan mcast_querier_interval tests
  selftests: net: bridge: add vlan mcast query and query response
    interval tests
  selftests: net: bridge: add vlan mcast_router tests
  selftests: net: bridge: add test for vlan_filtering dependency

 .../net/forwarding/bridge_vlan_mcast.sh       | 543 ++++++++++++++++++
 1 file changed, 543 insertions(+)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh

-- 
2.31.1

