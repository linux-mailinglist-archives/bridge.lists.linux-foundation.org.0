Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C333819EF
	for <lists.bridge@lfdr.de>; Sat, 15 May 2021 18:45:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7EA54057E;
	Sat, 15 May 2021 16:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ex5s1-rgennp; Sat, 15 May 2021 16:45:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49E7C40492;
	Sat, 15 May 2021 16:45:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F268FC0024;
	Sat, 15 May 2021 16:45:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2EE36C0001
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 16:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02418606EF
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 16:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XS9uVcEHk-JD for <bridge@lists.linux-foundation.org>;
 Sat, 15 May 2021 16:45:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F55F605EE
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 16:45:00 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id k127so1968508qkc.6
 for <bridge@lists.linux-foundation.org>; Sat, 15 May 2021 09:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Di0tqQRWLN116HzASz5hiSUHMEBmVNCl6fxRwEe3CFk=;
 b=f+jMnZN0cLBSqvApg/1qJq/cF1cVYc3CpgJKG8GQBoLex92Jp2NG9PuGnfZnIkifdp
 EHbAvdtIakodfGPxpErihof3l0WHWeGkVcvoxt9oUEofkDzNDJIIAhvGwBR0zZEIhRoY
 9Dr/qC8+m395QhSuoilv4Ljyb0VdVCQwff4Ifa58Iv7N2xFs5ceoHs4tfB0669zWBV5p
 bD6/ADBx1QvRYMTRQ17utQzZHxgzEtBcOboz1A6JhjdjkoQW47OE5vmH+OgxMzvsTMFo
 ZiNk15+bVeIXtjXTx1qboJNN0Qw8F6mZMMA6GibYC7LNIqgmlPbUHX6qf3hK7gvBRv3c
 /OzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Di0tqQRWLN116HzASz5hiSUHMEBmVNCl6fxRwEe3CFk=;
 b=eaz78XFi/rBX3fduWeTSmeE8NuDt24afH/TQH5QwW6iOh5okJbNcNj6LcFNOyaAU/5
 waG6gha8TFrfo2/2Ycrvfgaqc6ksycmZz740Cb/6w686V2MDRyOBaMIh/W+uCoEAIwu5
 /vBVcJt9PHn+iM63QImbTJgmegSm8sPqLflGHvSvSyeXlRqbv6sDlzr6YGK6TO/8k2Ua
 JidgUX/tN7Gkvg7eK0FPgk3Yj2CQsvPhIexhvINdfBmPo7s7b9nyqtQKvejib/2Nglpo
 QvVXnayG8n+7/HGK10g5iDnC5zmobKHnW83Fqx46GruP1JyJJHKmUBI3Ysg0QygM5sxX
 VJJA==
X-Gm-Message-State: AOAM5307EF/PaJQF3OL+aQUVPiHTwaHhcZ1U0mzrM/mSEFDw7igIxpBs
 MK85jkUV/mCG+QoDP3fYVO0=
X-Google-Smtp-Source: ABdhPJyLgyUXFdIj5scFIJV7gr8fsGegR4P4H4zNwmp6ri6zWh1k8GWiIoA1ywsmrJR5DvJlrLQZbw==
X-Received: by 2002:a37:a2c5:: with SMTP id
 l188mr49124178qke.413.1621097099495; 
 Sat, 15 May 2021 09:44:59 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id j25sm6847094qka.116.2021.05.15.09.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 May 2021 09:44:58 -0700 (PDT)
Date: Sat, 15 May 2021 09:44:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Linus =?iso-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Message-ID: <20210515164457.GA1387203@roeck-us.net>
References: <20210513132053.23445-1-linus.luessing@c0d3.blue>
 <20210513132053.23445-6-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210513132053.23445-6-linus.luessing@c0d3.blue>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [net-next v4 05/11] net: bridge: mcast: prepare
 is-router function for mcast router split
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

On Thu, May 13, 2021 at 03:20:47PM +0200, Linus L�ssing wrote:
> In preparation for the upcoming split of multicast router state into
> their IPv4 and IPv6 variants make br_multicast_is_router() protocol
> family aware.
> 
> Note that for now br_ip6_multicast_is_router() uses the currently still
> common ip4_mc_router_timer for now. It will be renamed to
> ip6_mc_router_timer later when the split is performed.
> 
> While at it also renames the "1" and "2" constants in
> br_multicast_is_router() to the MDB_RTR_TYPE_TEMP_QUERY and
> MDB_RTR_TYPE_PERM enums.
> 
> Signed-off-by: Linus L�ssing <linus.luessing@c0d3.blue>

Just in case this hasn't been reported yet. In next-20210514:

$ git grep br_multicast_is_router
net/bridge/br_input.c:                      br_multicast_is_router(br, skb)) {
net/bridge/br_multicast.c:      is_router = br_multicast_is_router(br, NULL);
net/bridge/br_private.h:br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
net/bridge/br_private.h:static inline bool br_multicast_is_router(struct net_bridge *br)
                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Guenter
