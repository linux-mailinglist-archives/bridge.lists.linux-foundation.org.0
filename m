Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6A74DC22E
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42BB98478D;
	Thu, 17 Mar 2022 09:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvREDH9-DagI; Thu, 17 Mar 2022 09:01:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EF84084796;
	Thu, 17 Mar 2022 09:01:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4BE9C0073;
	Thu, 17 Mar 2022 09:01:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 944D0C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83AAC84793
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44potcuwZvyh for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:01:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D87028478D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:24 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id p15so9253186ejc.7
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Vhmaa8dvAWAF7hhtVerRMIY5hbJUzuvuMcKyuTSFTwg=;
 b=78YceMwTeAnCsJX1c/l4aRdsPn2rkY4Ej3QmSbpqhb5TZWTH8ViYLss/o47dggaWBB
 8Cq3ytvuEIm3eG0HwDRs1eZEPWddjcoQSsiuQ1izCrxzc14/dIVyxYGcBO23FMg961M8
 5H7Dv2ySLSpgGD0fkCQSc7e9IkkdujC3nrkcFu/UDWdlvDT0QVLM3lhK7NjIyRYqdqmJ
 b4asp0Vq7xwTU3ge/5S0G/gPuIMxk7pu1sxsNO2eF74epze+2Vrh1MVSX1q0d44mnJ82
 rPWQMfaUwUu8MHGhxMwvnnCiWq5QfEwA9QFjZ2Vtn+ZhtKxWnlY/r2N3LrGZOjaysGnt
 BhfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Vhmaa8dvAWAF7hhtVerRMIY5hbJUzuvuMcKyuTSFTwg=;
 b=t4Rgb/CYS7jrfZMyzMSiaQpZrSWiZnTI17Kz1kUCvWKXX/84eZCch3VF/N1P4a0GNU
 7SXSL5Ooim3RuUQcxcNQsELqBRR0sK+DqBQObdyjqlqQaGod8u44KjefJqAo6ogrNALh
 b/CDLX9TZEA8Za6xdUaQ73T3vkTe2Vlk4o4rZV03ybqzirADjY3a3PcHh2J6g7NFv+J6
 kei/Gg9S9ozQPPHhq+FYop0zhWvrAT1ahAHdrUP7U8aAVk5gnvQchnlEhM92J33YU70B
 rS5bZVF8x2jL99tZKCHFIntOlhHzTVzQs3WwfMuQwkiznDK0aiBynFCuE1jzw8Vx8+GJ
 //Xw==
X-Gm-Message-State: AOAM530OZtXbP0IyT0kySXYIj+mQznPWMKqECk+kQ/cM+8BXrjF0rRWa
 e6eRPhocFm7KMqIGyYDxdcfTpQ==
X-Google-Smtp-Source: ABdhPJz5wwFFPWZiqC4nPeTrGUb1a5X0B8ku5ObeLhn2reQ2g3kLcviCNUKQ6pdcAOPpsEMmpauk5Q==
X-Received: by 2002:a17:906:3144:b0:6ce:de5d:5e3b with SMTP id
 e4-20020a170906314400b006cede5d5e3bmr3366414eje.689.1647507683061; 
 Thu, 17 Mar 2022 02:01:23 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 dn4-20020a17090794c400b006dbec4f4acbsm2061440ejc.6.2022.03.17.02.01.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 02:01:22 -0700 (PDT)
Message-ID: <4e09ab7d-95eb-7114-97cd-1e389c948a9e@blackwall.org>
Date: Thu, 17 Mar 2022 11:01:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-9-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-9-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 08/15] net: bridge: mst: Add helper
 to check if MST is enabled
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> This is useful for switchdev drivers that might want to refuse to join
> a bridge where MST is enabled, if the hardware can't support it.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/linux/if_bridge.h | 6 ++++++
>  net/bridge/br_mst.c       | 9 +++++++++
>  2 files changed, 15 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

