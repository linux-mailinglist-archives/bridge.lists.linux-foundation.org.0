Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7CD4D8864
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 16:42:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26C304019C;
	Mon, 14 Mar 2022 15:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCWtiCQF-NWA; Mon, 14 Mar 2022 15:42:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 86585404AA;
	Mon, 14 Mar 2022 15:42:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 43970C0084;
	Mon, 14 Mar 2022 15:42:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B280DC000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A110A408D9
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pkp2fNrGt_rB for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 15:42:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 927A4408BC
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 15:42:05 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id 17so20396364lji.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 08:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+7QYUGPUJGV7sAchppxshMOtZinPJnPqBas5RxkhQiA=;
 b=JBs6VYGA92rPbFqrd6OxMJkb4R8GLOe+Xpwa5oFbRmVd82ki7mxCsJWIBzPm+JULZh
 9B0lLCPVeGKpryB9BI+w5qKvmrzH2YA7wvAUEZqLGZMj+Jg9c4AcrGninr0PWy55NywR
 5xjZXsTsP2Th+S3Ff31kLVt190cEwtZbOTJN9y92RW7OrX+FqaeA7U7JNa8IK4Fje0hS
 0tn3lIHEDsO8TDQOxr/95Ps+dXmFShPpMYXBuVsQD4NSC/l2KfdliVs6vsNdj676nCxd
 UwnIpZnn+arFt5WnzRSKXrA7i697mjWJXs5+Pg+x0RI2lYrGKbDbQ7bBV2oaHD9wXdVN
 7I4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+7QYUGPUJGV7sAchppxshMOtZinPJnPqBas5RxkhQiA=;
 b=1kOALiEiLDSdX7fd9NnH/JN/qdCk4+6Y0P4M06Pobgts7ZbAR3R6YxYhgKfZ+eGOGT
 QtovZV3w39WntUQmh37soiiHFonOBZYObXOZFlQRZ0xNAmr6yzgeEV5jsVIwzjXYNZsu
 jYN22OH3Rkunpst1LnJJbU8P5H+hb8TBNpOFIqXTlVKvpF6YzK0KjHto3hdLfAdSR0xq
 LCtM/oOhs+ooo5dPUSxM3Q99xzsxPjztWUCqB0j9q46E9h+zEYjsqAPyn6DS7lkEizvV
 dM5STYbh+U+dchJR8q4wmJ+HwnmcWFUmLcK1VRu6DJj6MTT80JxCIqDjAqIslg3/YQ2+
 TUTA==
X-Gm-Message-State: AOAM531gWlWWN2phHY9YWx+bJVLaQY4W/adK7XB7Pue65W2jgPH/9qPo
 kw1rBU7gHJ1HOWNJPhF9vwBIvBuK74NC84ZV5Vkciw==
X-Google-Smtp-Source: ABdhPJxepvXdRnAvXL8qHIRPk5CjrHrMRqu3MnQUMPxTSbMYzgNmCBRal44+PHcVkvnim5xaB191Tw==
X-Received: by 2002:a05:651c:b10:b0:247:f37f:f595 with SMTP id
 b16-20020a05651c0b1000b00247f37ff595mr14431028ljr.444.1647272523106; 
 Mon, 14 Mar 2022 08:42:03 -0700 (PDT)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 u16-20020a056512129000b00448872b44afsm1419319lfs.29.2022.03.14.08.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 08:42:02 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220314145854.shtnvetounjfnu4e@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-4-tobias@waldekranz.com>
 <20220314145854.shtnvetounjfnu4e@skbuf>
Date: Mon, 14 Mar 2022 16:42:01 +0100
Message-ID: <87y21clewm.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 03/14] net: bridge: mst: Support
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

On Mon, Mar 14, 2022 at 16:58, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Mar 14, 2022 at 10:52:20AM +0100, Tobias Waldekranz wrote:
>> +int br_mst_fill_info(struct sk_buff *skb, struct net_bridge_vlan_group *vg)
>> +{
>> +	struct net_bridge_vlan *v;
>> +	struct nlattr *nest;
>> +	unsigned long *seen;
>> +	int err = 0;
>> +
>> +	seen = bitmap_zalloc(VLAN_N_VID, 0);
>
> I see there is precedent in the bridge driver for using dynamic
> allocation as opposed to on-stack declaration using DECLARE_BITMAP().
> I imagine this isn't just to be "heapsters", but why?
>
> I don't have a very good sense of how much on-stack memory is too much
> (a lot probably depends on the expected depth of the call stack too, and here it
> doesn't appear to be too deep), but I see that mlxsw_sp_bridge_vxlan_vlan_is_valid()
> has a DECLARE_BITMAP(vlans, VLAN_N_VID) too.
>
> The comment applies for callers of br_mst_get_info() too.

In v4, things become even worse, as I need to allocate the bitmap in a
context where I can't return an error. So if it's ok to keep it on the
stack, then that would be great.

Here's the code in question:

size_t br_mst_info_size(const struct net_bridge_vlan_group *vg)
{
	const struct net_bridge_vlan *v;
	unsigned long *seen;
	size_t sz;

	seen = bitmap_zalloc(VLAN_N_VID, 0);
	if (WARN_ON(!seen))
		return 0;

	/* IFLA_BRIDGE_MST */
	sz = nla_total_size(0);

	list_for_each_entry(v, &vg->vlan_list, vlist) {
		if (test_bit(v->brvlan->msti, seen))
			continue;

		/* IFLA_BRIDGE_MST_ENTRY */
		sz += nla_total_size(0) +
			/* IFLA_BRIDGE_MST_ENTRY_MSTI */
			nla_total_size(sizeof(u16)) +
			/* IFLA_BRIDGE_MST_ENTRY_STATE */
			nla_total_size(sizeof(u8));

		__set_bit(v->brvlan->msti, seen);
	}

	kfree(seen);
	return sz;
}
