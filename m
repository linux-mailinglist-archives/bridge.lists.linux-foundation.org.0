Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC99D3CCC67
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1833240226;
	Mon, 19 Jul 2021 02:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Hc1bSeksRIZ; Mon, 19 Jul 2021 02:51:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 97E56401D8;
	Mon, 19 Jul 2021 02:51:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5E479C0022;
	Mon, 19 Jul 2021 02:51:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 178E3C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E99B6401D8
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKzm6n1xphZp for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:51:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4CA1400E0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:51:10 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id c197so19075417oib.11
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=v2eXKPHVpTGWQBn4atDle/vMS0emj77aI3df3rtNZnA=;
 b=fb9/VEayTTjcPHY/YFefn3hXmbwkIW7AbJUab6yCFZL1ELWRkBfvzk1rHQAWNiMMRH
 rDMV2vEkTSEjRy14RE75QHsO0PV6f6S0S/FMeJeK/qxXk7uExR85nRLGqUYVNY2W8frk
 RdAiFtPjHlFWxfloLKHKf2RjXweu5vZoJ+yJ15XpIFw1nt5WqwVMjHVoDVz4HB5gqe2J
 O5ygDDW0AdSbVqwSxRyESQRVuYRn173FLlZdL1D9y7eQ3xwoMTMmtpOPd/BOzBgilkMz
 RUc4q0Y0Og4xC1z2e8dxRnIAubc80858XFsNHN9aYTn0PuJhrVdnTL/HUS1ZHsaFBr3e
 +HSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=v2eXKPHVpTGWQBn4atDle/vMS0emj77aI3df3rtNZnA=;
 b=dB93j9nnvy17UWIhEH+nYKSUCp+bv39wFyxxPNEROEkNmnOlqXM+U+8eEXUu+dL6b8
 Wy9+wn0kOGWh3fFfm3u/yNm+I1GCdsWEQnC7QSmSN/hKSazK2E7YnUiO5CvsivR9d4cK
 NZgi47iDlanwYrHV+ieFwuls4WFHDegSVW0D2y7WBsheZRhs7STI8Y98N31K7Da/Nms9
 vBn2lcu5b5LYRZFOI79sxWeKoRfSJPQgAe2XRQ0iDMuZdxjwVShWwwg9nCibqBpf0B8G
 Yt11cuREcen7Q4JrFFvHFnruW2L+URsBweDLXNojZa151lz/RMfHiBysL1NZSmOKPG+4
 FLXQ==
X-Gm-Message-State: AOAM531NYAIs/SOQzETcexNMcNwEBAfmHs9mjS1HaHCMZ2K554lUZHbD
 uWxPmQSNEhqhuKRnQBYqz+0=
X-Google-Smtp-Source: ABdhPJzbVGILTYmD50dPpViVa5gdKnY8iO74vYhfJT6Xq8hJuKne+ZniqLCFuI5CkL1eIikVp7ZW3w==
X-Received: by 2002:aca:f58e:: with SMTP id t136mr20382103oih.33.1626663069822; 
 Sun, 18 Jul 2021 19:51:09 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id i16sm3379124otp.7.2021.07.18.19.51.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:51:09 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-14-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <f6918f62-0482-f89a-61c6-c4d8071192a8@gmail.com>
Date: Sun, 18 Jul 2021 19:51:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-14-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 13/15] net: dsa: add support for
 bridge TX forwarding offload
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



On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> For a DSA switch, to offload the forwarding process of a bridge device
> means to send the packets coming from the software bridge as data plane
> packets. This is contrary to everything that DSA has done so far,
> because the current taggers only know to send control packets (ones that
> target a specific destination port), whereas data plane packets are
> supposed to be forwarded according to the FDB lookup, much like packets
> ingressing on any regular ingress port. If the FDB lookup process
> returns multiple destination ports (flooding, multicast), then
> replication is also handled by the switch hardware - the bridge only
> sends a single packet and avoids the skb_clone().
> 
> DSA plays a substantial role in backing the forwarding offload, and
> leaves relatively few things up to the switch driver. In particular, DSA
> keeps for each bridge port a zero-based index (the number of the
> bridge). Multiple ports enslaved to the same bridge have a pointer to
> the same accel_priv structure.
> 
> The tagger can check if the packet that is being transmitted on has
> skb->offload_fwd_mark = true or not. If it does, it can be sure that the
> packet belongs to the data plane of a bridge, further information about
> which can be obtained based on dp->bridge_dev and dp->bridge_num.
> It can then compose a DSA tag for injecting a data plane packet into
> that bridge number.
> 
> For the switch driver side, we offer two new dsa_switch_ops methods,
> called .port_bridge_fwd_offload_{add,del}, which are modeled after
> .port_bridge_{join,leave}.
> These methods are provided in case the driver needs to configure the
> hardware to treat packets coming from that bridge software interface as
> data plane packets. The switchdev <-> bridge interaction happens during
> the netdev_master_upper_dev_link() call, so to switch drivers, the
> effect is that the .port_bridge_fwd_offload_add() method is called
> immediately after .port_bridge_join().
> 
> If the bridge number exceeds the number of bridges for which the switch
> driver can offload the TX data plane (and this includes the case where
> the driver can offload none), DSA falls back to simply returning
> tx_fwd_offload = false in the switchdev_bridge_port_offload() call.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
