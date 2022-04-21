Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 852B1509D61
	for <lists.bridge@lfdr.de>; Thu, 21 Apr 2022 12:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B033419CD;
	Thu, 21 Apr 2022 10:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-74_SqUMFiJ; Thu, 21 Apr 2022 10:17:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C7EED419CF;
	Thu, 21 Apr 2022 10:17:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7BC59C0085;
	Thu, 21 Apr 2022 10:17:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F25D6C002C
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE9BA419CD
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a--DHX3Y8AOR for <bridge@lists.linux-foundation.org>;
 Thu, 21 Apr 2022 10:17:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 069AB419CF
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:17:55 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id e30so2368447eda.0
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 03:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=J8Pn8rUD1/67P2tIwIl9jn0IKf5NiUvBQMzixzEqf/Q=;
 b=B+CHHscwnn2+GacbCaiG+xNaVwl86dTG9X33TRd5Haj/UzFu/OV15iRoZllAENs/fn
 5XstadFRJB3u1VfDeP+s3zylVwkFvGzVU3svaIoI/BMK831NIwb+J4/jvC2EnJgtYjuE
 u3RJnmV6ZgpYlM3CDwblSTZnb31nQSo+Zc4t1lb7/h+mWIHZaaY7ICn8yJRS2PuiGcG4
 tBjaxKYkOyhllGC+0Do+fYZuG0jXcZxdQQUuRl6hQvVKeNdY0rVejVCNvpW1PFpyrvuX
 CNylqIrGqgLLsfAIdw4NI898sqFykbiuymAcEhsfEYtnf1AgsTVfSyQysnsa7tZhz4Bi
 4T3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=J8Pn8rUD1/67P2tIwIl9jn0IKf5NiUvBQMzixzEqf/Q=;
 b=o7POEY/iVQCUzGACOyiIRzt3glXdX+BcF+ZngwxptIcHWPfy7k777AzMrqhf3aZAGr
 SnKpBia+z9+J2STsEySUdmdpjFABbsabhufVcAlP9qbM8mQ7LQaKl4mQWjBABHEQdUoJ
 FVxLsVNcJ5uJURxStG9RSpMZZE0B0g0qnjERr3wrMt3P8TTQKEkNyttSp3MV3C8xjYJ1
 3IwyONaTQsRXC73zWPpG64JUYjSuU049Z5lbERJCS6/1bABxsmR3mDWjvshWDC+bL8hx
 Ac0c3h8Hs4fC3ADHEZ4NoM7sgAc8mki1uSqkipGkaMXSuhqRi6jPLi4rEUNLYpJrP7F5
 f79w==
X-Gm-Message-State: AOAM5317zYefECMVZNPLgfnOnwmwiCgCuzVyfZON8PsR0rRA98CQcp/a
 4YWGjtwccKj6YJCAnYVyRBgTvQ==
X-Google-Smtp-Source: ABdhPJxYj9pp3y6xMvUGAE9H+e7IXXi/Z76cQeSVwqvG2gC/kdL6xiYyU7QpLXbffYAK3KRvQEpSTQ==
X-Received: by 2002:a05:6402:26d1:b0:423:fc04:8e78 with SMTP id
 x17-20020a05640226d100b00423fc048e78mr14943798edd.133.1650536274027; 
 Thu, 21 Apr 2022 03:17:54 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 s1-20020a056402036100b004240a3fc6b4sm2805757edw.82.2022.04.21.03.17.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Apr 2022 03:17:53 -0700 (PDT)
Message-ID: <c945ebff-02fe-f2d5-656f-6bdfc46416f1@blackwall.org>
Date: Thu, 21 Apr 2022 13:17:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Roopa Prabhu <roopa@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
References: <20220421101247.121896-1-clement.leger@bootlin.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220421101247.121896-1-clement.leger@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: check
 br_vlan_group() return value
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

On 21/04/2022 13:12, Clément Léger wrote:
> br_vlan_group() can return NULL and thus return value must be checked
> to avoid dereferencing a NULL pointer.
> 
> Fixes: 6284c723d9b9 ("net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations")
> Signed-off-by: Clément Léger <clement.leger@bootlin.com>
> ---
>  net/bridge/br_switchdev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 81400e0b26ac..8f3d76c751dd 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -354,6 +354,8 @@ static int br_switchdev_vlan_attr_replay(struct net_device *br_dev,
>  	attr.orig_dev = br_dev;
>  
>  	vg = br_vlan_group(br);
> +	if (!vg)
> +		return 0;
>  
>  	list_for_each_entry(v, &vg->vlan_list, vlist) {
>  		if (v->msti) {


Good catch.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
