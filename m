Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC1D616399
	for <lists.bridge@lfdr.de>; Wed,  2 Nov 2022 14:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 862418175B;
	Wed,  2 Nov 2022 13:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 862418175B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Co9RGYZG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLcv_Z4WA_7d; Wed,  2 Nov 2022 13:17:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E3C6181DCB;
	Wed,  2 Nov 2022 13:17:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3C6181DCB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6840CC007B;
	Wed,  2 Nov 2022 13:17:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DF42FC002D
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9D69409D8
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:17:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9D69409D8
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Co9RGYZG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7mjVkDxUTzkk for <bridge@lists.linux-foundation.org>;
 Wed,  2 Nov 2022 13:16:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA3540168
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEA3540168
 for <bridge@lists.linux-foundation.org>; Wed,  2 Nov 2022 13:16:57 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id b2so45231636eja.6
 for <bridge@lists.linux-foundation.org>; Wed, 02 Nov 2022 06:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=L0plc7VTbxlANYhpRBuv1ctV0TdjHiSqfJ6g/74SBJk=;
 b=Co9RGYZGKjU8rVmpuqVho98QclNwo0dnaNPCnN5tkRYlqskj6sWoKlaY8XBnMX0Do1
 tiHteVDhFcix1rJdO7NG8/RZms+RYbGkRnrkPwnI5y7EwG5ied2KO3C1jiWu08dxA7Nh
 5iRF1CUAkvNzpZis6wrokRPKcJPqxJXLMuhZ/CXV/31bJT9zD7NuYiQfhXnH8emk39x2
 fq6kK1C9Sh7eChaTfwopAdMhL5Q2eUQ/D081YtqRAV/POPuY/+TRth8PI3dyjmDi7TEp
 LC5GL/RafG/tHvKxiZrqBp7bm7tU8khOtiWGtpu92+ZTH7Tv8mnDwgFUxynd9TuyKR/J
 pz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=L0plc7VTbxlANYhpRBuv1ctV0TdjHiSqfJ6g/74SBJk=;
 b=OofyoNVyVawtga2y966eIpUA0iIHHXmlzzyXx2efgm3hksswRklqVYeWTQ2uTyyN+r
 avTO+x29FvSLCSRap6z1CrbMgLxJ2JREXI+UxfPLJ6WsWz7P/LEU+kzdbBt4+OzKD3wN
 lJJWbn5l7pOsH3rn/ApRy/CspMQCa0MG3iu7WOkVE0/wtRYNhRQ2ds+hX9ZV/WLXLLWn
 46Qj1snSSVYA4b6e2gcW0KLmxHTqLaE+B91k1mWUXSOYq+TGzBUj553X8lCZbv2j9VGl
 DYdDYc4ekl/iyud7e/i10i18Na0r+6ytXoZg3EB3qs2U3+hf7AQ3gskFkSDeoFG4Yr5f
 Bj5g==
X-Gm-Message-State: ACrzQf3jxHzNGL8bqiX1y5qP3/Z5na5NjqHmsCxve+o7aIpgyOMZ27TS
 3B07SmXqO/wZAB2bGVb6NJibPA==
X-Google-Smtp-Source: AMsMyM68AVqZxcsFj3pbl2xDjPeLZKLMMG+TtNXblD1VZpS6wjP9E5z/8pIiMjC04/bUcHLm8xtaKg==
X-Received: by 2002:a17:907:c19:b0:7ad:e10b:c415 with SMTP id
 ga25-20020a1709070c1900b007ade10bc415mr11873778ejc.537.1667395015990; 
 Wed, 02 Nov 2022 06:16:55 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 u1-20020a1709064ac100b0078df26efb7dsm445959ejt.107.2022.11.02.06.16.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Nov 2022 06:16:55 -0700 (PDT)
Message-ID: <c2c74974-22f3-46b5-b821-2f2b98ebe9b4@blackwall.org>
Date: Wed, 2 Nov 2022 15:16:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221101193922.2125323-1-idosch@nvidia.com>
 <20221101193922.2125323-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221101193922.2125323-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: vladimir.oltean@nxp.com, roopa@nvidia.com, edumazet@google.com,
 mlxsw@nvidia.com, netdev@kapio-technology.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add MAC Authentication
 Bypass (MAB) support
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

On 01/11/2022 21:39, Ido Schimmel wrote:
> From: "Hans J. Schultz" <netdev@kapio-technology.com>
> 
> Hosts that support 802.1X authentication are able to authenticate
> themselves by exchanging EAPOL frames with an authenticator (Ethernet
> bridge, in this case) and an authentication server. Access to the
> network is only granted by the authenticator to successfully
> authenticated hosts.
> 
> The above is implemented in the bridge using the "locked" bridge port
> option. When enabled, link-local frames (e.g., EAPOL) can be locally
> received by the bridge, but all other frames are dropped unless the host
> is authenticated. That is, unless the user space control plane installed
> an FDB entry according to which the source address of the frame is
> located behind the locked ingress port. The entry can be dynamic, in
> which case learning needs to be enabled so that the entry will be
> refreshed by incoming traffic.
> 
> There are deployments in which not all the devices connected to the
> authenticator (the bridge) support 802.1X. Such devices can include
> printers and cameras. One option to support such deployments is to
> unlock the bridge ports connecting these devices, but a slightly more
> secure option is to use MAB. When MAB is enabled, the MAC address of the
> connected device is used as the user name and password for the
> authentication.
> 
> For MAB to work, the user space control plane needs to be notified about
> MAC addresses that are trying to gain access so that they will be
> compared against an allow list. This can be implemented via the regular
> learning process with the sole difference that learned FDB entries are
> installed with a new "locked" flag indicating that the entry cannot be
> used to authenticate the device. The flag cannot be set by user space,
> but user space can clear the flag by replacing the entry, thereby
> authenticating the device.
> 
> Locked FDB entries implement the following semantics with regards to
> roaming, aging and forwarding:
> 
> 1. Roaming: Locked FDB entries can roam to unlocked (authorized) ports,
>    in which case the "locked" flag is cleared. FDB entries cannot roam
>    to locked ports regardless of MAB being enabled or not. Therefore,
>    locked FDB entries are only created if an FDB entry with the given {MAC,
>    VID} does not already exist. This behavior prevents unauthenticated
>    devices from disrupting traffic destined to already authenticated
>    devices.
> 
> 2. Aging: Locked FDB entries age and refresh by incoming traffic like
>    regular entries.
> 
> 3. Forwarding: Locked FDB entries forward traffic like regular entries.
>    If user space detects an unauthorized MAC behind a locked port and
>    wishes to prevent traffic with this MAC DA from reaching the host, it
>    can do so using tc or a different mechanism.
> 
> Enable the above behavior using a new bridge port option called "mab".
> It can only be enabled on a bridge port that is both locked and has
> learning enabled. Locked FDB entries are flushed from the port once MAB
> is disabled. A new option is added because there are pure 802.1X
> deployments that are not interested in notifications about locked FDB
> entries.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Extend commit message.
>     * Adjust extack message.
>     * Flush locked FDB entries when MAB is disabled.
>     * Refresh locked FDB entries.
>     * Add comments in br_handle_frame_finish().
>     
>     Changes made by me:
>     * Reword commit message.
>     * Reword comment regarding 'NTF_EXT_LOCKED'.
>     * Use extack in br_fdb_add().
>     * Forbid MAB when learning is disabled.
> 
>  include/linux/if_bridge.h      |  1 +
>  include/uapi/linux/if_link.h   |  1 +
>  include/uapi/linux/neighbour.h |  8 +++++++-
>  net/bridge/br_fdb.c            | 24 ++++++++++++++++++++++++
>  net/bridge/br_input.c          | 21 +++++++++++++++++++--
>  net/bridge/br_netlink.c        | 21 ++++++++++++++++++++-
>  net/bridge/br_private.h        |  3 ++-
>  net/core/rtnetlink.c           |  5 +++++
>  8 files changed, 79 insertions(+), 5 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

