Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5444D023B
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 16:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A13F640632;
	Mon,  7 Mar 2022 15:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnH4gyX5mmI0; Mon,  7 Mar 2022 15:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 34B4740875;
	Mon,  7 Mar 2022 15:00:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2ABBC0073;
	Mon,  7 Mar 2022 15:00:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79F99C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6683760E74
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnF4T36jlzXg for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 15:00:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 666BF60E5F
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:00:26 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id r20so20854595ljj.1
 for <bridge@lists.linux-foundation.org>; Mon, 07 Mar 2022 07:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=lJtjgve15KcPn5Fu9Ouzt1Wk99mJhKfetxwppVZu8NU=;
 b=rwzKJtfJcICD1GmZEURxv1cmkMof2PEdjv5T839FXmnrp5OrFhLyJki6sy+pSUlouq
 FkJcaTnPE0OsYdLxfzl1mZfg32F7cWz3dib3rPMfKtItblXggw3jt/GNeSww2Ef8C0uL
 gyCBWhvKdWplhwbMHUjSVg/A4U3pOa2AEFqs0Phgz4YKo4ofnItLOnnsOFPyfe5tuG9c
 SRp17Nn+DG+7vAp6nAiUeZ0nlmc/T6scQ7SoFo96XmvP3lxxmN6LV8/n9/JTppfaLVe9
 8HNaUTibEAkvzt7SOMwMxVQpx7SIgwmp4x7xJ+DAJcInoaBFW8aYsQ1N6wiUFHnDl3qU
 mGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lJtjgve15KcPn5Fu9Ouzt1Wk99mJhKfetxwppVZu8NU=;
 b=5nPJIRtztadxtqMEUn9civZlsaGc+GjVLHDJ2LSvtY5NJhWmjCWTNOPGlUC5ziT1rR
 i9+dA1XWo7TrYYOtrJ7u650tf7dLbBubE49Ieh4vl94fPRSSS2gEIdvq1zPkDHamcz1b
 k9sn6/u8z2UAtqhBOZ+yZDxGc1spiTBiaY1a3jxHtBr3CNopGJjkFNuDte1f2JPKMKpK
 cvN3LLc7rxGdpNfUUbTZ3MFVfw46gAj5Mr1oi/b81Mi1yN+6py+lwWfxUZROj+ocppVx
 LDhZ+m+s+nA6ZuLtYW8Ye/44RsQgK6daphnetrhh78VAfvuxVY7uVAYs8pDZT5Bz7TlP
 PjLQ==
X-Gm-Message-State: AOAM5326LYBQdrufidQGL6rOimOMR+cPRq0a3cIpB73Ik3cuMGpfwHYN
 +L8Gcv5MWSUqGti+NDEOqG0Rsem0ri8COIexEwE8dA==
X-Google-Smtp-Source: ABdhPJz4S0r8jeA4pBXHSvd68+6vZd78S3Itpg6kY1EELmS5SoYS0Tra6J0HwgxD0edOvclP8e5G3w==
X-Received: by 2002:a05:651c:a0e:b0:247:daa7:4357 with SMTP id
 k14-20020a05651c0a0e00b00247daa74357mr7281184ljq.180.1646665224088; 
 Mon, 07 Mar 2022 07:00:24 -0800 (PST)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 bi25-20020a0565120e9900b0044757d26a47sm2498865lfb.290.2022.03.07.07.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 07:00:23 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, davem@davemloft.net,
 kuba@kernel.org
In-Reply-To: <53EED92D-FEAC-4CC6-AF2A-52E73F839AB5@blackwall.org>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-4-tobias@waldekranz.com>
 <53EED92D-FEAC-4CC6-AF2A-52E73F839AB5@blackwall.org>
Date: Mon, 07 Mar 2022 16:00:22 +0100
Message-ID: <874k49olix.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 03/10] net: bridge: mst: Support
 setting and reporting MST port states
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

On Wed, Mar 02, 2022 at 00:19, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 1 March 2022 11:03:14 CET, Tobias Waldekranz <tobias@waldekranz.com> wrote:
>>Make it possible to change the port state in a given MSTI. This is
>>done through a new netlink interface, since the MSTIs are objects in
>>their own right. The proposed iproute2 interface would be:
>>
>>    bridge mst set dev <PORT> msti <MSTI> state <STATE>
>>
>>Current states in all applicable MSTIs can also be dumped. The
>>proposed iproute interface looks like this:
>>
>>$ bridge mst
>>port              msti
>>vb1               0
>>		    state forwarding
>>		  100
>>		    state disabled
>>vb2               0
>>		    state forwarding
>>		  100
>>		    state forwarding
>>
>>The preexisting per-VLAN states are still valid in the MST
>>mode (although they are read-only), and can be queried as usual if one
>>is interested in knowing a particular VLAN's state without having to
>>care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
>>bound to MSTI 100):
>>
>>$ bridge -d vlan
>>port              vlan-id
>>vb1               10
>>		    state forwarding mcast_router 1
>>		  20
>>		    state disabled mcast_router 1
>>		  30
>>		    state disabled mcast_router 1
>>		  40
>>		    state forwarding mcast_router 1
>>vb2               10
>>		    state forwarding mcast_router 1
>>		  20
>>		    state forwarding mcast_router 1
>>		  30
>>		    state forwarding mcast_router 1
>>		  40
>>		    state forwarding mcast_router 1
>>
>>Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>>---
>> include/uapi/linux/if_bridge.h |  16 +++
>> include/uapi/linux/rtnetlink.h |   5 +
>> net/bridge/br_mst.c            | 244 +++++++++++++++++++++++++++++++++
>> net/bridge/br_netlink.c        |   3 +
>> net/bridge/br_private.h        |   4 +
>> 5 files changed, 272 insertions(+)
>>
>>diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>>index b68016f625b7..784482527861 100644
>>--- a/include/uapi/linux/if_bridge.h
>>+++ b/include/uapi/linux/if_bridge.h
>>@@ -785,4 +785,20 @@ enum {
>> 	__BRIDGE_QUERIER_MAX
>> };
>> #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
>>+
>>+enum {
>>+	BRIDGE_MST_UNSPEC,
>>+	BRIDGE_MST_ENTRY,
>>+	__BRIDGE_MST_MAX,
>>+};
>>+#define BRIDGE_MST_MAX (__BRIDGE_MST_MAX - 1)
>>+
>>+enum {
>>+	BRIDGE_MST_ENTRY_UNSPEC,
>>+	BRIDGE_MST_ENTRY_MSTI,
>>+	BRIDGE_MST_ENTRY_STATE,
>>+	__BRIDGE_MST_ENTRY_MAX,
>>+};
>>+#define BRIDGE_MST_ENTRY_MAX (__BRIDGE_MST_ENTRY_MAX - 1)
>>+
>> #endif /* _UAPI_LINUX_IF_BRIDGE_H */
>>diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
>>index 0970cb4b1b88..4a48f3ce862c 100644
>>--- a/include/uapi/linux/rtnetlink.h
>>+++ b/include/uapi/linux/rtnetlink.h
>>@@ -192,6 +192,11 @@ enum {
>> 	RTM_GETTUNNEL,
>> #define RTM_GETTUNNEL	RTM_GETTUNNEL
>> 
>>+	RTM_GETMST = 124 + 2,
>>+#define RTM_GETMST	RTM_GETMST
>>+	RTM_SETMST,
>>+#define RTM_SETMST	RTM_SETMST
>>+
>
> I think you should also update selinux  (see nlmsgtab.c)
> I'll think about this one, if there is some nice way to avoid the new rtm types.
>
>> 	__RTM_MAX,
>> #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
>> };
>>diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
>>index f3b8e279b85c..8dea8e7257fd 100644
>>--- a/net/bridge/br_mst.c
>>+++ b/net/bridge/br_mst.c
>>@@ -120,3 +120,247 @@ int br_mst_set_enabled(struct net_bridge *br, unsigned long val)
>> 	br_opt_toggle(br, BROPT_MST_ENABLED, !!val);
>> 	return 0;
>> }
>>+
>>+static int br_mst_nl_get_one(struct net_bridge_port *p, struct sk_buff *skb,
>>+			     struct netlink_callback *cb)
>>+{
>>+	struct net_bridge_vlan_group *vg = nbp_vlan_group(p);
>>+	int err = 0, idx = 0, s_idx = cb->args[1];
>>+	struct net_bridge_vlan *v;
>>+	struct br_port_msg *bpm;
>>+	struct nlmsghdr *nlh;
>>+	struct nlattr *nest;
>>+	unsigned long *seen;
>>+
>
> Reverse xmas tree

Both of these lines end at the 28th column. Is there some other
tiebreaking mechanism that forces the reverse ordering of nest and seen?

In a variable-width font, the nest declaration does appear shorter. I
remember that you did not have your laptop with you, could that be it?
