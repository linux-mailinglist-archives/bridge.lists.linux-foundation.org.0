Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569593CCC59
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3775400EA;
	Mon, 19 Jul 2021 02:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edSLGX6Yjtix; Mon, 19 Jul 2021 02:43:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 38132400D8;
	Mon, 19 Jul 2021 02:43:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3A79C0022;
	Mon, 19 Jul 2021 02:43:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8912BC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B14960680
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHXl-5D87pyo for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:43:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABEB660655
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:43:25 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 o72-20020a9d224e0000b02904bb9756274cso16782850ota.6
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jibvRJ8x4gDFYeeL7+2QzukIzWDDAy7tWepHyOMPSYk=;
 b=WmzljnzfdyCKejRVwaGUTWf32CFVrEe05Hp/D3gKkNwRLzGfz5I2l3tw6eQbc4NgTr
 +B7WFDq93w/dbGeQWaoLroU4EwWddE/Scvdk09ShsO3fS1+SCSOHiYBvm92eRG/vjwy6
 HgfGFB8GGLrzwzuUfLOdXC1B3fux4Vc5ljWM/CDnUStO+0cLMjz/eJbRyh8s1Z/QcQSr
 IQx858KvB/hHrsYxFGFwC46i/pppFrZDHH4bE+2OoczE7ZRTlTQxlHx9i96g3XfQ7p9m
 7ErdnFXVMDI1F66a8bvOZreteFp/MOVfknYym74WMcQJm7RicSF0FkVWmgZoh5wura9B
 5zKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jibvRJ8x4gDFYeeL7+2QzukIzWDDAy7tWepHyOMPSYk=;
 b=Oc7oZOY2bOnXCfY5RAL1h3y1MoH17sGu5dRnkO7KaFyOmg2QR1/GcsHcpGypS1Ft7T
 C6SD2xvHiHu4Bx4r0ts2ZvSkb9KiGDfC6vkrz+oWKYEMpSjIjpcbQGnCKfgpqLIo+rA3
 ZvwW4up/Y4yI7zKGOwWKW48FX8YQaEFrDel1/NgG9YGkheBNFD0QaK6PzsCMKxJFlXD4
 B+I+LObVU08W0zKn3uPUitRV1mTQRFmoDoSOJ3tnxBVTDD96Lusv463zn4yjcvJ6egC0
 0Est9GPdbV2Np/imhsGGd4uCQ5CM5QzjToHY0tzWCGm0E73GH+OTv7fzdv2NDN+uXtNr
 bfLw==
X-Gm-Message-State: AOAM532KPMe7eisJ9dSPePQICwLF0eMnQT6KUx0cy/vP+FflXI8HGjAc
 3xODmc8gAj99W9HGnlqJ7Q0=
X-Google-Smtp-Source: ABdhPJz9mwIVizqcEYhpcU+r73xr823GQCEsHeE/sNkp+C7nCZ6fwD3mXmBa69bm5UfMtPvXdl9sjQ==
X-Received: by 2002:a05:6830:1f3b:: with SMTP id
 e27mr17111375oth.311.1626662604688; 
 Sun, 18 Jul 2021 19:43:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id o26sm3404180otk.77.2021.07.18.19.43.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:43:24 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-12-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d81cf0d4-3680-8f87-63ba-d2d843394d5b@gmail.com>
Date: Sun, 18 Jul 2021 19:43:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-12-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 11/15] net: bridge: switchdev:
 allow the TX data plane forwarding to be offloaded
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
> From: Tobias Waldekranz <tobias@waldekranz.com>
> 
> Allow switchdevs to forward frames from the CPU in accordance with the
> bridge configuration in the same way as is done between bridge
> ports. This means that the bridge will only send a single skb towards
> one of the ports under the switchdev's control, and expects the driver
> to deliver the packet to all eligible ports in its domain.
> 
> Primarily this improves the performance of multicast flows with
> multiple subscribers, as it allows the hardware to perform the frame
> replication.
> 
> The basic flow between the driver and the bridge is as follows:
> 
> - When joining a bridge port, the switchdev driver calls
>    switchdev_bridge_port_offload() with tx_fwd_offload = true.
> 
> - The bridge sends offloadable skbs to one of the ports under the
>    switchdev's control using skb->offload_fwd_mark = true.
> 
> - The switchdev driver checks the skb->offload_fwd_mark field and lets
>    its FDB lookup select the destination port mask for this packet.
> 
> v1->v2:
> - convert br_input_skb_cb::fwd_hwdoms to a plain unsigned long
> - introduce a static key "br_switchdev_fwd_offload_used" to minimize the
>    impact of the newly introduced feature on all the setups which don't
>    have hardware that can make use of it
> - introduce a check for nbp->flags & BR_FWD_OFFLOAD to optimize cache
>    line access
> - reorder nbp_switchdev_frame_mark_accel() and br_handle_vlan() in
>    __br_forward()
> - do not strip VLAN on egress if forwarding offload on VLAN-aware bridge
>    is being used
> - propagate errors from .ndo_dfwd_add_station() if not EOPNOTSUPP
> 
> v2->v3:
> - replace the solution based on .ndo_dfwd_add_station with a solution
>    based on switchdev_bridge_port_offload
> - rename BR_FWD_OFFLOAD to BR_TX_FWD_OFFLOAD
> v3->v4: rebase
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
