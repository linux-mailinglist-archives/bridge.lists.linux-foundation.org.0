Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 052BB4FF461
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9931460D70;
	Wed, 13 Apr 2022 10:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0l27HVlrUTr; Wed, 13 Apr 2022 10:04:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0356960B60;
	Wed, 13 Apr 2022 10:04:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AFDEEC0088;
	Wed, 13 Apr 2022 10:04:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F8A5C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 956E640B3C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YA4-vNAmKRJz for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:04:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0D8940B60
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:04:12 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id u19so1514937ljd.11
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=b0Q7eIUJvll8Zc2Wicyz8swgbwUiW9Yb1yMGEPB9veY=;
 b=iVn8i3xa3MWY4ELY/Y28Hb05tecqhBRCBGWJu520Pj6jhRfitI1VWQDEr/x1hVnQoo
 r82cbejX0ajDHqpPKanbUIRK9Y99VmAZ/c604Fn2slcSotYfqkHYi7DrTpCCDZOpO4Cf
 ovVRF2EC45La2qlHJz3b44nNP70nL+fARxZEuMmr2BBMjCBa4pKuGdnOWzd77Zj6FUXf
 MlemZs+QugZFfhqxnl7vp6nLdl5zClsiMomEFZ+LQWJ8g/fUbiI1Y6CBaJPltBYv5ebD
 Ebe3d8jGsHGfpQbWi/zugGzz44Vp6IcwgQXiIHewvvPIbXqNHdDJP/0GCvojTSBPrfiZ
 Q0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=b0Q7eIUJvll8Zc2Wicyz8swgbwUiW9Yb1yMGEPB9veY=;
 b=GmDN/w4f/piCIKcHi4a95VxZgIbn8Zyv6aeoGPcPQLsij3wzhO21KaVdHGe1F6/5Df
 02tNHpofX9TZtqZj9x2JO8ScUCqNiz9ZQbhHY4miSlNbfYkB1iCe/zBu+bjHfxJK7njx
 +lgYJ1wV5LdX1YOleAJBRBy4Fzjmug8NzOP7EMJydxEe/22xC2zggnHHs5Bz+nswGD+P
 X/TXzM4wOkc023pPneW9G+iEXbsHMAic9NI+UERH2d8akGf9CAfj9/n9/9g2kZg5BHOv
 uiekaAJsbRhJd8LweoLls7QpYFM1fa6QP7X/wEqN+jTJT1ytvnzowq/rgeUDo0a99SzY
 HL8w==
X-Gm-Message-State: AOAM530EcYC+tO8j8FaGgu6sEPk7Ai9exkwSR2HoxeNEDT/gT/K1DEft
 sPdonHVv/Ev9UxZJECD+K7g=
X-Google-Smtp-Source: ABdhPJySOaL1TZPpUvtuv7iJQK2poQ+YbxG4EK8Qp95psxA4pxIqNxKUdfMAPy8Rhqa3cOG4/YtNeg==
X-Received: by 2002:a05:651c:90b:b0:24c:7dee:4087 with SMTP id
 e11-20020a05651c090b00b0024c7dee4087mr3372228ljq.381.1649844250789; 
 Wed, 13 Apr 2022 03:04:10 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 q12-20020a196e4c000000b0046ba44bec79sm1183094lfk.133.2022.04.13.03.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:04:10 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <37bb2846-6371-1e49-9a7e-7c27a7a8b9c4@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-5-troglobit@gmail.com>
 <37bb2846-6371-1e49-9a7e-7c27a7a8b9c4@blackwall.org>
Date: Wed, 13 Apr 2022 12:04:09 +0200
Message-ID: <87h76x9u5i.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 04/13] net: bridge: netlink
	support for controlling BUM flooding to bridge
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

On Tue, Apr 12, 2022 at 21:24, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 11/04/2022 16:38, Joachim Wiberg wrote:
>> The messy part is in br_setport(), which re-indents a large block of
>> code for the port settings.  To reduce code duplication a few new
>> variables have been added; new_flags and dev.  The latter is used for
>> the recently renamed br_switchdev_set_dev_flag(), which can now be used
>> by underlying switching fabric drivers as another source of information
>> when controlling flooding of unknown BUM traffic to the CPU port.
> Absolutely not. This is just wrong on a few levels and way too hacky.
> Please separate the bridge handling altogether and make it clean.
> No need to integrate it with the port handling,

OK, I'll have a go at it.

> also I think you've missed a few things about bool options, more
> below...
>
> For boolopts examples you can check BR_BOOLOPT_NO_LL_LEARN,
> BR_BOOLOPT_MCAST_VLAN_SNOOPING and BR_BOOLOPT_MST_ENABLE.

Ah yes, will read up on those, thanks!

>> +		if (nla_put_u8(skb, IFLA_BRPORT_UNICAST_FLOOD,
>> +			       br_opt_get(br, BROPT_UNICAST_FLOOD)) ||
>> +		    nla_put_u8(skb, IFLA_BRPORT_MCAST_FLOOD,
>> +			       br_opt_get(br, BROPT_MCAST_FLOOD)) ||
>> +		    nla_put_u8(skb, IFLA_BRPORT_BCAST_FLOOD,
>> +			       br_opt_get(br, BROPT_BCAST_FLOOD)))
>> +			return -EMSGSIZE;
> No. Bool opts are already exposed through IFLA_BR_MULTI_BOOLOPT.

Aha, there it is, awesome!

>> +static void br_set_bropt(struct net_bridge *br, struct nlattr *tb[],
>> +			 int attrtype, enum net_bridge_opts opt)
>> +{
>> +	if (!tb[attrtype])
>> +		return;
>> +
>> +	br_opt_toggle(br, opt, !!nla_get_u8(tb[attrtype]));
>> +}
> These must be controlled via the boolopt api and attributes, not through
> additional nl attributes.

Understood.

>> @@ -1058,9 +1144,9 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
>>  				return err;
>>  
>>  			spin_lock_bh(&br->lock);
>> -			err = br_setport(p, tb, extack);
>> +			err = br_setport(br, p, tb, extack);
> setport is for *port* only...

A-firm.

Thank you for the honest review.  Netlink is still much of a mystery in
many ways to me.

Best regards
 /Joachim
