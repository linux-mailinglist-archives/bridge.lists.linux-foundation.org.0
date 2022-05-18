Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465BD52C5B8
	for <lists.bridge@lfdr.de>; Wed, 18 May 2022 23:43:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D37A3400EA;
	Wed, 18 May 2022 21:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XqzUq0_yKstP; Wed, 18 May 2022 21:43:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6AE6840160;
	Wed, 18 May 2022 21:43:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21C85C007E;
	Wed, 18 May 2022 21:43:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BAFC9C002D
 for <bridge@lists.linux-foundation.org>; Wed, 18 May 2022 21:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B18D400EA
 for <bridge@lists.linux-foundation.org>; Wed, 18 May 2022 21:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2tzl1E6ggq4 for <bridge@lists.linux-foundation.org>;
 Wed, 18 May 2022 21:43:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1F5A40160
 for <bridge@lists.linux-foundation.org>; Wed, 18 May 2022 21:43:15 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id f9so6404650ejc.0
 for <bridge@lists.linux-foundation.org>; Wed, 18 May 2022 14:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=+0u6Co0fQyRE3E7Gd5FQVT98igTbdpT+/KuuR/oOF0o=;
 b=Lq8UN195SQC5IPnKOEO6l2YcI/XCWCeTBJOiTVUrQdQOxiP1flbaAf6YI7ybUg0SOA
 dwWdS7QqjCMOmLJLxYO9qocWPkMdotKnjr6RgpNBqCZCnXClXC3jLNldc/IQA+E+3MUV
 2Jp3+81U9+l4tJimSqzZviLR8KKZnBDgM0376nX7/uC7oEaGV/Hn04khLJNVivyigVpH
 iW8ubOhHKXxNL4H3rajYGJWeI0v97YfuINgV/bZ/7KBkZJWx53bJnbt6x94JjnHR90I5
 oB7xrGGWksa6RaAYGX1M3n17tWudAnT3kuqPqhxmx67tDvpt5R4MbvUlR8yqnaQMyFrP
 uPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=+0u6Co0fQyRE3E7Gd5FQVT98igTbdpT+/KuuR/oOF0o=;
 b=HtMNjB4St4yh5/siakNntVBLuMbE7QFBdxxH0Cz/RFLF7LoltmtCJRlJDjFpXPgpkV
 zkeokYd/j+ujo6uK7aa/7TN+b1Ug90rr5mJ4w/cGDrQmG6Mr7dRmAIZvtsgIWgzqXWXR
 y5OFgcr9qdWjWd6FG8TwZxfGYpnEW9dsAAyzu5vY82dkkHq429HN09AtpwvFyTybfMsm
 PhJwr3mnvuiEKYSXILX4tCaHspJZeGwxIdZ29aCgxClzc/UslSpciaLkSSeJg7JjE4kc
 x5jnr0YTL3FdoPn0x93Tgv8NgK/5v5TrImWED892ChjKYdT0ThRcldM1XQyRSa63d43H
 O4cQ==
X-Gm-Message-State: AOAM531EiHtYWwsLkzSTHTWGmhA+GDAgGpftd5OCpCUs4DwdkeUyyh91
 2wiL8A1fm9C9qMiz9x5pGvw5HQ==
X-Google-Smtp-Source: ABdhPJyMMU+X1/waHm0V+jOhDoSXQpwPFG3UJgrD7Y4DiyR5Ls6dWqS1Vt9ubSBbzCWbycRPlmU2HA==
X-Received: by 2002:a17:906:7309:b0:6f5:ea1:afa with SMTP id
 di9-20020a170906730900b006f50ea10afamr1466099ejc.170.1652910193932; 
 Wed, 18 May 2022 14:43:13 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 hg23-20020a1709072cd700b006f3ef214decsm1377344ejc.82.2022.05.18.14.43.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 May 2022 14:43:13 -0700 (PDT)
Message-ID: <b3a94a42-1333-1393-1946-e6412d6830d5@blackwall.org>
Date: Thu, 19 May 2022 00:43:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>, netdev <netdev@vger.kernel.org>
References: <20220518005840.771575-1-andrew@lunn.ch>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220518005840.771575-1-andrew@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@mellanox.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH v2 net] net: bridge: Clear offload_fwd_mark
 when passing frame up bridge interface.
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

On 18/05/2022 03:58, Andrew Lunn wrote:
> It is possible to stack bridges on top of each other. Consider the
> following which makes use of an Ethernet switch:
> 
>        br1
>      /    \
>     /      \
>    /        \
>  br0.11    wlan0
>    |
>    br0
>  /  |  \
> p1  p2  p3
> 
> br0 is offloaded to the switch. Above br0 is a vlan interface, for
> vlan 11. This vlan interface is then a slave of br1. br1 also has a
> wireless interface as a slave. This setup trunks wireless lan traffic
> over the copper network inside a VLAN.
> 
> A frame received on p1 which is passed up to the bridge has the
> skb->offload_fwd_mark flag set to true, indicating that the switch has
> dealt with forwarding the frame out ports p2 and p3 as needed. This
> flag instructs the software bridge it does not need to pass the frame
> back down again. However, the flag is not getting reset when the frame
> is passed upwards. As a result br1 sees the flag, wrongly interprets
> it, and fails to forward the frame to wlan0.
> 
> When passing a frame upwards, clear the flag. This is the Rx
> equivalent of br_switchdev_frame_unmark() in br_dev_xmit().
> 
> Fixes: f1c2eddf4cb6 ("bridge: switchdev: Use an helper to clear forward mark")
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
> 
> v2:
> Extended the commit message with Ido obsersation of the equivelance of
> br_dev_xmit().
> 
> Fixed up the comment.
> 
> This code has passed Ido test setup.
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

