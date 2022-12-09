Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40934647E93
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:31:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1B5B81E7B;
	Fri,  9 Dec 2022 07:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1B5B81E7B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=ysYDYD5R
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T9EBAsopozZx; Fri,  9 Dec 2022 07:31:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4C87381E57;
	Fri,  9 Dec 2022 07:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C87381E57
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0766CC007C;
	Fri,  9 Dec 2022 07:31:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18A75C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E99114023F
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E99114023F
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=ysYDYD5R
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J102BTZ1GIZL for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:31:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49CB94014B
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49CB94014B
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:31:19 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id h11so4285345wrw.13
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=je/hcoSOt+coZaybXz7eb8R7zv6LEFeKDF9n70ZMzAc=;
 b=ysYDYD5RtN+wIYSi1bI5J111qdXzPFrAlv/bvN5yu0u4v+Tp7pVZVf0rIVPV6a+E/a
 yeTu3/8SIWMxOXG1MAms01hgZADrUoGEPy0MQzC5IKkfT1P0iCLOHul8aAUfxlwVT4AP
 HHyQBC5kg1010G1exzh2LJ3eOMui03e2/P2i61X5KCjqJEDzZcj1A4TtllwKBM+4pTr3
 qTyPCJgltrX7kNjxJ4X5FPwC2iHIKv5oI1NgSHVC7pm9NUaW3t1p8N1SfahlApEXlK8g
 v2oNkxxa+QUxD+JO2m1tSDNORSe9g1JSb0UBke9CSw47YcawfLmnu3drQUhuecq4l0M/
 yI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=je/hcoSOt+coZaybXz7eb8R7zv6LEFeKDF9n70ZMzAc=;
 b=JVsLH0teg8zOJ/Y0nY5F/Xh6X+ZO6yVmIJJu+wIU09X8SHv67f9KbCXucNx0EOlMcQ
 U2uIxJohcrV+BMLT/qk8DmKbAaHPzEVM5dCqaSZgeF65LH48y1nwMqWNp/e9RzjzcRjH
 MWidp/Ddx7b+ldVFAjbNjS9pvKKLBFf591gw4PL74rxEVQh17QPY/Z6FLbTlkkIhqK4G
 8Qu81uGA4jrNV+ENS6aiy3YE8gaGSu5avenSLscHIIYHyBeZyv4JrK8lCFxYXLUiNhpK
 5VUtrMnIJkdCakJZ1JKeBmrjLVGc7vN1joaxxtiFBg4+r8dOpn9eOiGs8FALoaAdW4+n
 m5EA==
X-Gm-Message-State: ANoB5pllGeN4ANyF9MCEm5bSQEtQsYHCSVbsBiNHlBtikhQudRThHqAm
 KJmN1sO4vSfwThoRGS7w4okYMQ==
X-Google-Smtp-Source: AA0mqf4f+bMO0EQ7ILvvThfbCMXmS9BhrpIxBk3cGlPvrgr44rqBBwPI1dJhxQbk+BRFXb1yi2MXag==
X-Received: by 2002:adf:cd86:0:b0:242:1d69:1ba1 with SMTP id
 q6-20020adfcd86000000b002421d691ba1mr4075094wrj.44.1670571077471; 
 Thu, 08 Dec 2022 23:31:17 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a5d4ec4000000b00242246c2f7csm616574wrv.101.2022.12.08.23.31.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:31:17 -0800 (PST)
Message-ID: <68714375-7d33-a9de-e59d-48a4250831d0@blackwall.org>
Date: Fri, 9 Dec 2022 09:31:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-7-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-7-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 06/14] bridge: mcast: Expose
 __br_multicast_del_group_src()
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> Expose __br_multicast_del_group_src() which is symmetric to
> br_multicast_new_group_src() and does not remove the installed {S, G}
> forwarding entry, unlike br_multicast_del_group_src().
> 
> The function will be used in the error path when user space was able to
> add a new source entry, but failed to install a corresponding forwarding
> entry.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * New patch.
> 
>  net/bridge/br_multicast.c | 11 ++++++++---
>  net/bridge/br_private.h   |  1 +
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


