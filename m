Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B68F35BF58C
	for <lists.bridge@lfdr.de>; Wed, 21 Sep 2022 06:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4593E60FE4;
	Wed, 21 Sep 2022 04:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4593E60FE4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=JxUWNI8T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V-suIxDhYzEu; Wed, 21 Sep 2022 04:45:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C9BB460FE6;
	Wed, 21 Sep 2022 04:45:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9BB460FE6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5EE92C0077;
	Wed, 21 Sep 2022 04:45:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 03396C002D
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 04:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D14FC8250B
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 04:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D14FC8250B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=JxUWNI8T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DyXzUY95zBY6 for <bridge@lists.linux-foundation.org>;
 Wed, 21 Sep 2022 04:45:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E24B581ADE
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E24B581ADE
 for <bridge@lists.linux-foundation.org>; Wed, 21 Sep 2022 04:45:11 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id z13so6794483edb.13
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 21:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=qzk5oLYbYGm3BHnsgSBtDHRCJL48j9t8HeQTS7gm2wg=;
 b=JxUWNI8TIHdFgVW1ngZne2CkuOQxif+pa+WY88wq2PlopW0EDUDjqn5HpjeYYMv+i0
 KViOt3GPgDmkyqt1Z/qhvKgj0X4/bRphKTWbn6kPseH6bvajEKRR7pcj9uFjlpwWBAqh
 30uffDwipf38NBdVVSL6ejnuz1edkAxWTwUk7c4HnyUzPHmH82KXM046fdsnIIejakaa
 1IUmrViZEXVLRgEc5tjo2skcoQDycenjeh7l4cZmyYa8KG8ccAlPiLR7BmWBofJ5cwYJ
 3d3HwK9T9JFItsMEdseerz+vKXidMCitosRO75NmfH0r9/U+IlUQsJV7i+L9Rk01xnwy
 acXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=qzk5oLYbYGm3BHnsgSBtDHRCJL48j9t8HeQTS7gm2wg=;
 b=UTi6fnCfLAI4Hpds/97k60etWskUZ5GVbVUv0ifoKEyFvf1X7WSeafDLeLTLpeV1L/
 PsWRHyXEs7lcVE08u3wtO3auxaw6VkcFXNWDX0YfhsS/Q6tXBunC5+57os793YCIzCjo
 2tQWTh6jSN3BCUWONhVVJ4iLl7ax3TVGI7CxijxZh7VdxVhR1WWt6OEldsoTmhtDje9w
 vTb0OC2qD79LUw9KugRovmtxuCCIbgW9TzGmOR4/U2u7+DMiDvDHnGZkSu74t2ZAFO/q
 ZqwMMj5Vs+u9v36huCDP/1qmRAt6SnES1fyVqd7+8GTrRNd7jPDQukvSJ3ubzFbgXKez
 bBcQ==
X-Gm-Message-State: ACrzQf0i281pdKFM3gPh1y4kZk0/ePFawjVWGTTJ1CX4ZVzYOBkow9Df
 m63tfevPyfmEA3YeAPKS7qXwIw==
X-Google-Smtp-Source: AMsMyM7+gW+ygA22gbwvi4QbDO0COr82ooOiqv4A3s3dNUtpnD2pI6UQO3Pvu/4MBUZrJnY8xt4Fng==
X-Received: by 2002:aa7:d718:0:b0:454:5899:9eb0 with SMTP id
 t24-20020aa7d718000000b0045458999eb0mr7685676edq.37.1663735509924; 
 Tue, 20 Sep 2022 21:45:09 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 kx15-20020a170907774f00b0073dc8d0eabesm806342ejc.15.2022.09.20.21.45.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 21:45:09 -0700 (PDT)
Message-ID: <3f2d6682-7c5c-5a6d-110b-568331650949@blackwall.org>
Date: Wed, 21 Sep 2022 07:45:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
 <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
 <20220920162954.1f4aaf7b@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220920162954.1f4aaf7b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
 behavior and add selftests
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

On 21/09/2022 02:29, Jakub Kicinski wrote:
> On Tue, 20 Sep 2022 12:16:26 +0300 Nikolay Aleksandrov wrote:
>> The set looks good to me, the bridge and vlan direct dependency is gone and
>> the new notification type is used for passing link type specific info.
> 
> IDK, vlan knows it's calling the bridge:
> 
> +	if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
> +	    netif_is_bridge_master(vlan->real_dev)) {
> 

This one is more of an optimization so notifications are sent only when the bridge
is involved, it can be removed if other interested parties show up.

> bridge knows it's vlan calling:
> 
> +	if (is_vlan_dev(dev)) {
> +		br_vlan_device_event(dev, event, ptr);
> 
> going thru the generic NETDEV notifier seems odd.
> 
> If this is just to avoid the dependency we can perhaps add a stub 
> like net/ipv4/udp_tunnel_stub.c ?
> 

I suggested the notifier to be more generic and be able to re-use it for other link types although
I don't have other use cases in mind right now. Stubs are an alternative as long as they and
their lifetime are properly managed. I don't have a strong preference here so if you prefer
stubs I'm good.

>> If the others are ok with it I think you can send it as non-RFC, but I'd give it
>> a few more days at least. :)

Cheers,
 Nik

