Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EB3CCC6B
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9782E403F3;
	Mon, 19 Jul 2021 02:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZXGdRw7w0rO; Mon, 19 Jul 2021 02:52:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 07711403F7;
	Mon, 19 Jul 2021 02:52:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B948EC0022;
	Mon, 19 Jul 2021 02:52:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D71B9C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9C948272C
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HL0Lb7uWtE8e for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:52:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95A3B82628
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:52:40 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id r80so5363735oie.13
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WxKnE9VVIhW03+cH+9p6iQL7PxKsWgSsEqoZEEkW4H4=;
 b=FyBb6p+QwCom/Q45S/ycAcWLSxcczSHOGV3NQ1SizOB/wz6L44mjjsBfgTe1NIDILv
 Qs1wH0vYjb1g3PRufdBmip9lE9noEHSg95/B5nxgb4jdkH5N4+mudsjGP+SAXvQF6de1
 1RyBWkB5a+Mi/n3xN3Ag+v3xFMtVXyTFyQVgw29UfZNdv44uRtXA3aTRzBRwOnJ/Bb2j
 nd/hyOrKvVfb0iK997TxuLglVS1/Nf1PXLFrZZvvtkrDW9qSwNUxM6IECsipDleqsaOl
 ZLh7k9Nlov1kvpO2yyf1tOeicqrNkF9FD4cdlH/Cz49w/UXmjnwuZGzsnfbYkZxwh5SW
 CD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WxKnE9VVIhW03+cH+9p6iQL7PxKsWgSsEqoZEEkW4H4=;
 b=tYHl1EVFtUDGmoSPPnOAQ6bf9hSuk4Av0U826dzt3gWFC/MrU4yhUhlp7aLnwZo2TU
 FuozrsUTc60MnzRrjJT2JvHHl/OyUSvDX6yE5HS5B3MmoDTCbROvkU4im3t0iSihMKXO
 DXghNfW0lBiFtwJZvZh8Xcfj8cGM8V5G09PL5KKas6+dD9ERAvrt7H8tGAYep0rEiPpZ
 wqZCRix4dpWTnK69ajzucpQ9RPZiILLx1O5tHHt1L9skwpaf4gEP4QLpAwfXpVcB2gIm
 uW1zxPUTObGe4hfEHFB/zBnJNZMoWbPlBhL1HM+A8z9BiLWab+BVCgeN8/tgKWoEjN+A
 KRQg==
X-Gm-Message-State: AOAM532GB7bMNhuGL1wUn0JASLfE1NIVi7GGyc+pKpVDh7tucP7BBpGz
 N+AFCDYuKkEHXQGF24DgH2A=
X-Google-Smtp-Source: ABdhPJx7n4EoVKcq+Sr9OjRUaJ8kvnBup9qs52qthhp3/k9g8n/JUv6MZQj1ukIFMDFqW+Pa7De7gA==
X-Received: by 2002:a05:6808:1494:: with SMTP id
 e20mr4291116oiw.111.1626663159708; 
 Sun, 18 Jul 2021 19:52:39 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id o101sm3383766ota.61.2021.07.18.19.52.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:52:39 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-15-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5915e957-8a22-54d4-fb56-aa080f21fce9@gmail.com>
Date: Sun, 18 Jul 2021 19:52:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-15-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 14/15] net: dsa: mv88e6xxx: map
 virtual bridges with forwarding offload in the PVT
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
> The mv88e6xxx switches have the ability to receive FORWARD (data plane)
> frames from the CPU port and route them according to the FDB. We can use
> this to offload the forwarding process of packets sent by the software
> bridge.
> 
> Because DSA supports bridge domain isolation between user ports, just
> sending FORWARD frames is not enough, as they might leak the intended
> broadcast domain of the bridge on behalf of which the packets are sent.
> 
> It should be noted that FORWARD frames are also (and typically) used to
> forward data plane packets on DSA links in cross-chip topologies. The
> FORWARD frame header contains the source port and switch ID, and
> switches receiving this frame header forward the packet according to
> their cross-chip port-based VLAN table (PVT).
> 
> To address the bridging domain isolation in the context of offloading
> the forwarding on TX, the idea is that we can reuse the parts of the PVT
> that don't have any physical switch mapped to them, one entry for each
> software bridge. The switches will therefore think that behind their
> upstream port lie many switches, all in fact backed up by software
> bridges through tag_dsa.c, which constructs FORWARD packets with the
> right switch ID corresponding to each bridge.
> 
> The mapping we use is absolutely trivial: DSA gives us a unique bridge
> number, and we add the number of the physical switches in the DSA switch
> tree to that, to obtain a unique virtual bridge device number to use in
> the PVT.
> 
> Co-developed-by: Tobias Waldekranz <tobias@waldekranz.com>
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
