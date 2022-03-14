Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618F74D8027
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 11:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AF5F4011A;
	Mon, 14 Mar 2022 10:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIKTLDnbDf6g; Mon, 14 Mar 2022 10:45:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BA631404CD;
	Mon, 14 Mar 2022 10:45:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8511AC0084;
	Mon, 14 Mar 2022 10:45:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7EAB8C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BD0281454
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdclojs_1Gqn for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 10:45:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACD2781452
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:45:06 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id g3so19227474edu.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 03:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=r3SbgvMuwSpWyo+T3+2fkvrANVSSGA2KeBMI0vAa/Mc=;
 b=2j+iM3bcJEKwZ9uQ0GbufP5c4a0aJdPJFZH7++cftGYb4uc9hqczdgnotS2iTFwHJb
 40s1RKE4GJ0yvZDGQ1F8skW+18wz1+Ddjs60vDfIK0lMQjWjzeIfz+aW7mMPT12CsZVK
 dImyN46Ms8XYA2nqjzP5RRzJLNLGlPTPBHfDTKEjTQVzaj/euYTuaHuMJTxKZascYJVr
 fcjEE3Q4QdmpnV+2dEbexMR7hOLp5FC55xHDwRr566gUc5ZNZCGIFJTvnUOyUDLn1SSv
 PmRMThfNlvodXhLEHQVmRQzaEH798W6+DZ2QYQbzp6CuWoagDEwehLxAUvFa/x8TLK2r
 RMlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=r3SbgvMuwSpWyo+T3+2fkvrANVSSGA2KeBMI0vAa/Mc=;
 b=kSr2rC9D9MwPRGSVsbZzqHZbYKxWXZFQ77KVsUNpDfQk33Xjrwsw6aHLTeu2tGOG5L
 6XYJzUixpJFdDGkmMLBrXBxAVndaqJs4k9wD6Q78cMj0jTEBb6uk6f1xWpxBZ1t9eTSO
 /RnyZwenBGmdxJaha7FTjRtz90f6IG6F0WFyojR+o+BKI7tdkyemY7NAW/d1B9L8QDNE
 DGncnmxP4lOAzHMg2vE87ADVdHi+d4bLunuFj5PZ3eBcSgcshQ8yNReETAhmWLFsYOSP
 cP1JG/W8NFyMEDI7AZaTCxyEpJj++/mXwneQM2JjpQB7jOMFL0pvJ/i2Bv9sbalJmts6
 Rc1A==
X-Gm-Message-State: AOAM533eOog8+1IssJyKz630h4sJBsdePeIH0HaHLauGejR0WN1lHNvl
 JaUcX/M2WHOJMuz/l8oOX31i+g==
X-Google-Smtp-Source: ABdhPJz1/064iHnYpmcme3MSo1mVUD0kSoK7ZiYzfHLy3RJgmGRGbmYrNcxMVl3sBsmOxT+hFFCXwg==
X-Received: by 2002:a05:6402:5256:b0:416:97d1:a6a2 with SMTP id
 t22-20020a056402525600b0041697d1a6a2mr19796660edd.280.1647254704879; 
 Mon, 14 Mar 2022 03:45:04 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 e8-20020a17090681c800b006d9f7b69649sm6563655ejx.32.2022.03.14.03.45.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 03:45:04 -0700 (PDT)
Message-ID: <0a95bd84-9f1a-da44-0e70-a53e3b7402db@blackwall.org>
Date: Mon, 14 Mar 2022 12:45:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-3-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220314095231.3486931-3-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 02/14] net: bridge: mst: Allow
 changing a VLAN's MSTI
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

On 14/03/2022 11:52, Tobias Waldekranz wrote:
> Allow a VLAN to move out of the CST (MSTI 0), to an independent tree.
> 
> The user manages the VID to MSTI mappings via a global VLAN
> setting. The proposed iproute2 interface would be:
> 
>     bridge vlan global set dev br0 vid <VID> msti <MSTI>
> 
> Changing the state in non-zero MSTIs is still not supported, but will
> be addressed in upcoming changes.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/uapi/linux/if_bridge.h |  1 +
>  net/bridge/br_mst.c            | 42 ++++++++++++++++++++++++++++++++++
>  net/bridge/br_private.h        |  1 +
>  net/bridge/br_vlan_options.c   | 15 ++++++++++++
>  4 files changed, 59 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

