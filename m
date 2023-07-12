Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 664A074FF76
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 08:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0469C60AD5;
	Wed, 12 Jul 2023 06:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0469C60AD5
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=eKyatQ3e
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l_CwPgaZO8ln; Wed, 12 Jul 2023 06:38:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2AF0F60A5E;
	Wed, 12 Jul 2023 06:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AF0F60A5E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9FF48C0DD4;
	Wed, 12 Jul 2023 06:38:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2880C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 06:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC51F60A91
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 06:38:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC51F60A91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VlBxd3yIK2qD for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 06:38:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48B8560A5E
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48B8560A5E
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 06:38:25 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-9939fbb7191so90069266b.0
 for <bridge@lists.linux-foundation.org>; Tue, 11 Jul 2023 23:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689143903; x=1691735903;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Tw6o+RiD3xsjf8AwbB7vgQei7f5cIWP68DUtUmS4mTI=;
 b=eKyatQ3esvy/Br++K/ZWzafOnodEk4cb1aY/mG6E84uxtNIAJ4VGVvMrDYaONeNr02
 8PZsdb0Y3LJVkq5iKxZIyZm6N8YriQ5AHGrIstSu5YXcW2wAmTwsb3riI5ZnwxlfLBUb
 3XWey52p+EEUnY65pGla/nqlwWXkH5BIo/6/vv9hvyNwkycdsnA0u1R00nSXgMYMbYCp
 QJoZRFMCG5seYz5oHzp/9WQk2OGEH0cphmXklRUUQD6br/ohNUBuot8pFU5f4da8ZkHX
 XliKyzfX0WiJrOaMwAofZG7b35soOyfOrDw2Qf5L1i3uaLTAzT2xY3RJ4Bx8AcNfvs0D
 fl5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689143903; x=1691735903;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Tw6o+RiD3xsjf8AwbB7vgQei7f5cIWP68DUtUmS4mTI=;
 b=g6R+2mQSIZlG/JR1JczSrIj2MLOeLH6J2dDPaYcCiduU27C+lAsGkSWUFlISwxFTJL
 Ai3fvwveqEQnz0bG4un8XXb5rxNHXmhbwP/bwGD6EEBcqiy6kutvyg5W9TKGkKkzbsRK
 yk+g6QfnsoUuq2MZBihk4LLaXpLqJuQ712j8XBL8KaMi981wANe338LyfjParYl8Fx7j
 aIsknIqbTgzL3rwWENQfInm2UqJRV3A2VGEM2bRRpgIV5Es7ZZq33MLFFkUpVSufxG+Z
 3iPkyYqWkhvIhs7y3A4VLNDEfjfqQMoCgSEO0518vCeQGUPB1DyVb+oSgImhvjP0bTDz
 GB5Q==
X-Gm-Message-State: ABy/qLZLjSGyEXjiUQrmg6BKDLvFFyXTGcqGvWEt9vdjn492EE3ct2WG
 JnwAPg7Sa+Mh13wAG7EoX2jCBg==
X-Google-Smtp-Source: APBJJlH1pEsJiXYEpbrcahZHa72TJ1r2UizTGSEKZDclPp3mbIEsi8BU/qVuxHJVqiEzQgPIfQPF3Q==
X-Received: by 2002:a17:907:6d8c:b0:989:21e4:6c6d with SMTP id
 sb12-20020a1709076d8c00b0098921e46c6dmr1309099ejc.28.1689143903035; 
 Tue, 11 Jul 2023 23:38:23 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 j1-20020a1709064b4100b0098e025cda3bsm2117917ejv.141.2023.07.11.23.38.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Jul 2023 23:38:22 -0700 (PDT)
Message-ID: <18cfa70a-35b6-da02-3dd4-0c8ab6639b9b@blackwall.org>
Date: Wed, 12 Jul 2023 09:38:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Kuniyuki Iwashima <kuniyu@amazon.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230711235415.92166-1-kuniyu@amazon.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230711235415.92166-1-kuniyu@amazon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Harry Coin <hcoin@quietfountain.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, "Eric W. Biederman" <ebiederm@xmission.com>,
 Kuniyuki Iwashima <kuni1840@gmail.com>
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
 STP in netns.
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

On 12/07/2023 02:54, Kuniyuki Iwashima wrote:
> When we create an L2 loop on a bridge in netns, we will see packets storm
> even if STP is enabled.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link add veth0 type veth peer name veth1
>   # ip link set veth0 master br0 up
>   # ip link set veth1 master br0 up
>   # ip link set br0 type bridge stp_state 1
>   # ip link set br0 up
>   # sleep 30
>   # ip -s link show br0
>   2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
>       link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
>       RX: bytes  packets  errors  dropped missed  mcast
>       956553768  12861249 0       0       0       12861249  <-. Keep
>       TX: bytes  packets  errors  dropped carrier collsns     |  increasing
>       1027834    11951    0       0       0       0         <-'   rapidly
> 
> This is because llc_rcv() drops all packets in non-root netns and BPDU
> is dropped.
> 
> Let's show an error when enabling STP in netns.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link set br0 type bridge stp_state 1
>   Error: bridge: STP can't be enabled in non-root netns.
> 
> Note this commit will be reverted later when we namespacify the whole LLC
> infra.
> 
> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
> Suggested-by: Harry Coin <hcoin@quietfountain.com>
> Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
> Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
> ---
>  net/bridge/br_stp_if.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index 75204d36d7f9..a807996ac56b 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,6 +201,11 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>  	ASSERT_RTNL();
>  
> +	if (!net_eq(dev_net(br->dev), &init_net)) {
> +		NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> +		return -EINVAL;
> +	}
> +
>  	if (br_mrp_enabled(br)) {
>  		NL_SET_ERR_MSG_MOD(extack,
>  				   "STP can't be enabled if MRP is already enabled");

Oh well, I guess this should do for now. Hopefully we don't break scripts that rely
on configuring the bridge without any errors. Thanks for the patch,

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>



