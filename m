Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA27F4D021B
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 15:53:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CC566070A;
	Mon,  7 Mar 2022 14:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ehi_nh9KL8sb; Mon,  7 Mar 2022 14:53:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4D1EA60782;
	Mon,  7 Mar 2022 14:53:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0DB42C0073;
	Mon,  7 Mar 2022 14:53:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4EC1C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6BC2812C6
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:53:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXjR4duqoXaJ for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 14:53:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEFEE812B5
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 14:53:34 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id q5so6110015ljb.11
 for <bridge@lists.linux-foundation.org>; Mon, 07 Mar 2022 06:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=z+Sy3daXdZc7eFbdaSwLgS5WLdDuNus4al0ePtnegPY=;
 b=nXjjimFe6hkuycvGrRtBjI1tKHAIDTQIMYAAXSkRjb2oWqSuB/56KJfDcJysox0MNW
 JZgo+cbfllhR/t2NrtkiFGFnBeuEt7tZGrh6Ib1Vw/0OuoHLacO0XOi4RuXFF1hOS2X+
 s6QOSDr89qyk3k5+h2aCsvSU8ZtsqRhvqFiF2cVjVM1RB/b93R7oH8Q14UQI8nCEnil3
 eU336Zo/Yf8z/RNW3DDQbY3LdduKL4XQr5ZrQcGUrgSwhtnFhpk7EIVYOKLR2bgX1BAf
 0XvFoGwBTTXSZ0cC2JWcH8n5czQCnX8QfB0VzjYTnjo+EssdB9v3rjIJKtfhjIJqWEtG
 0cIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=z+Sy3daXdZc7eFbdaSwLgS5WLdDuNus4al0ePtnegPY=;
 b=ifEPZ9WJHPAkOlfYUyUqlcMfwgJC+gMIDLtrCeUiJ5cJLguk50oHR/6ffQxo+kPugT
 bRzwNZ1B8BRLLqaau2YNVMOfL2CwEZhK9yKOFZgVXJKvKYPSBHHeDt64XT62e03hdKmo
 8oLj39lA4khZYM2JHfjJxZdwcICUgym7Nt/PQ68NlTTbasTNZR6B68cZ5aAQklBvloa7
 FVPt3pdkHX8QqHQoU4R7RwJ7pV0qh/8LBk+YyMtBjJCrtEWbnzdflhCPvIFVdszgJZlv
 4ab+pOo72/+IjZxYkcPFvW+SHQZacNbCej+xBiUSqNltL5NSFX76yEPP7cCpo+Mmklj1
 CImw==
X-Gm-Message-State: AOAM532AIDAlvKawT4XwcLoz+4hRwBLjaXDY179D7IuxohSpOzo26vLq
 xP0mrMcSAGUilONBE06bqtvdFZVxeac15FQh9Vps7g==
X-Google-Smtp-Source: ABdhPJzwJYX8QzgQc/9gclgdwVh43xGvJ5/ZrCLjbcRJhj+2yO1Yd1a2xOZPXO+BMShe/qizAJYQWQ==
X-Received: by 2002:a2e:8882:0:b0:244:8a8a:212 with SMTP id
 k2-20020a2e8882000000b002448a8a0212mr8017210lji.220.1646664812423; 
 Mon, 07 Mar 2022 06:53:32 -0800 (PST)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 u26-20020ac25bda000000b0044830ec5d05sm592057lfn.274.2022.03.07.06.53.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 06:53:31 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, davem@davemloft.net,
 kuba@kernel.org
In-Reply-To: <F908AE50-EDF4-4B83-98BD-ECB872CAD776@blackwall.org>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-2-tobias@waldekranz.com>
 <F908AE50-EDF4-4B83-98BD-ECB872CAD776@blackwall.org>
Date: Mon, 07 Mar 2022 15:53:30 +0100
Message-ID: <87a6e1olud.fsf@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v2 net-next 01/10] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On Wed, Mar 02, 2022 at 00:01, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 1 March 2022 11:03:12 CET, Tobias Waldekranz <tobias@waldekranz.com> wrote:
>>Allow the user to switch from the current per-VLAN STP mode to an MST
>>mode.
>>
>>Up to this point, per-VLAN STP states where always isolated from each
>>other. This is in contrast to the MSTP standard (802.1Q-2018, Clause
>>13.5), where VLANs are grouped into MST instances (MSTIs), and the
>>state is managed on a per-MSTI level, rather that at the per-VLAN
>>level.
>>
>>Perhaps due to the prevalence of the standard, many switching ASICs
>>are built after the same model. Therefore, add a corresponding MST
>>mode to the bridge, which we can later add offloading support for in a
>>straight-forward way.
>>
>>For now, all VLANs are fixed to MSTI 0, also called the Common
>>Spanning Tree (CST). That is, all VLANs will follow the port-global
>>state.
>>
>>Upcoming changes will make this actually useful by allowing VLANs to
>>be mapped to arbitrary MSTIs and allow individual MSTI states to be
>>changed.
>>
>>Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>>---
>> include/uapi/linux/if_link.h |  1 +
>> net/bridge/Makefile          |  2 +-
>> net/bridge/br_input.c        | 17 +++++++-
>> net/bridge/br_mst.c          | 83 ++++++++++++++++++++++++++++++++++++
>> net/bridge/br_netlink.c      | 14 +++++-
>> net/bridge/br_private.h      | 26 +++++++++++
>> net/bridge/br_stp.c          |  3 ++
>> net/bridge/br_vlan.c         | 20 ++++++++-
>> net/bridge/br_vlan_options.c |  5 +++
>> 9 files changed, 166 insertions(+), 5 deletions(-)
>> create mode 100644 net/bridge/br_mst.c
>>
>
> Hi,
> As I mentioned in another review, I'm currently traveling and will have pc access
> end of this week (Sun), I'll try to review the set as much as I can through my phone in the
> meantime. Thanks for reworking it, generally looks good.
> A few comments below,
>
>
>>diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
>>index e315e53125f4..7e0a653aafa3 100644
>>--- a/include/uapi/linux/if_link.h
>>+++ b/include/uapi/linux/if_link.h
>>@@ -482,6 +482,7 @@ enum {
>> 	IFLA_BR_VLAN_STATS_PER_PORT,
>> 	IFLA_BR_MULTI_BOOLOPT,
>> 	IFLA_BR_MCAST_QUERIER_STATE,
>>+	IFLA_BR_MST_ENABLED,
>
> Please use the boolopt api for new bridge boolean options like this one.

Ahh, I was not aware of that. Will change it in v3. Thanks.
