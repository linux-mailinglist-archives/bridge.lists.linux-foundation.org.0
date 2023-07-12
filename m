Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B2750CF4
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 17:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C92C840A0E;
	Wed, 12 Jul 2023 15:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C92C840A0E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=PF6fmNqj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXmyQVWumAvT; Wed, 12 Jul 2023 15:46:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 176E940990;
	Wed, 12 Jul 2023 15:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 176E940990
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69508C0DD4;
	Wed, 12 Jul 2023 15:46:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BC59C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2875760BE4
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:46:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2875760BE4
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=PF6fmNqj
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftsfMFd_HAoq for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 15:46:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE4AE60AE2
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE4AE60AE2
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 15:46:34 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-992f15c36fcso911156066b.3
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 08:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689176793; x=1691768793;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/qsNwSJj66luchpZzX75OoZLSwHVbA5Pm9qid51Ei6Y=;
 b=PF6fmNqjZ/AYqva8v3NNTKu8eEoKH35QAaW5y9va6R7Ux8tb4vtt4fnEqofuxyvjZn
 a0qMZq/JAmWMPbOGYXnJcmQacubZOqKSeNKCmAbvSBNzJdQtuv4yS6Kk+rnWfmfClGBS
 cXP7+SuGhDwzNxvL+iujWDLk0SH2CMgt5PRsdZmx5C+WmX8GF34Se4puFXLXJd2HUjHo
 WUMkEMnuHq2blfogwHyG3OFdUk+EkXNWRaQON2Und7zDQ6c3MKwO483lZw1WfgJ4ShdM
 ga7iF5l42KYLzIqwup5geQ4ilZb0dKAHrextos3SS0y2+nKawPQyy4UD4jy1CfNyZRM5
 Jm0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689176793; x=1691768793;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/qsNwSJj66luchpZzX75OoZLSwHVbA5Pm9qid51Ei6Y=;
 b=QvSx8S3ZD7GeIgZnIJXKFtKO7VGg2d3e+Mi9Wn2qeI+ZeSKvD957Dl7iLa85yNRnLy
 JBAtdmMR3PtsXs5QFCZO0KSxx/8D76bhEsVI80uXqvsgsD2XYS1OqbdYPS74z5pzRsPx
 SKY4MX9FGBRz+jx8lc3qKyW89qguK24tiO24U2WB5lmrhtL+Ty6fc3nX1KZXclUwXz9y
 CwNH628TzAFQ73BtCv5taiJD2a2FTDYK128t76zyYxfsxdOXhdvDZ2G1uP4WFDbpHA22
 bOnSTYS1/82w8n4PZSCBLWzvGbQ36hxvUSAoZPqk37wS5pAx1+rTs9SelEJwuvEnwTel
 e1Pg==
X-Gm-Message-State: ABy/qLZ5urmb6BgZP10PaPHOooVCaQIo626rO/awTWyDk2cfNavAbxzQ
 ePG0GXbGPlqyBhYEi7Q5dfwFmg==
X-Google-Smtp-Source: APBJJlF+H1DxTJOqCtmKvaeOHMNy8NffqS1ilyjCJbwvGQxE5YfEKotn1UsSgKe5YzerwlwDlxNuFQ==
X-Received: by 2002:a17:906:150b:b0:982:7545:efb6 with SMTP id
 b11-20020a170906150b00b009827545efb6mr16230217ejd.66.1689176792780; 
 Wed, 12 Jul 2023 08:46:32 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 ci7-20020a170906c34700b009934707378fsm2718238ejb.87.2023.07.12.08.46.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jul 2023 08:46:32 -0700 (PDT)
Message-ID: <28f857c9-2ee9-6a20-ecd2-b4e63307cd89@blackwall.org>
Date: Wed, 12 Jul 2023 18:46:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Kuniyuki Iwashima <kuniyu@amazon.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230712154449.6093-1-kuniyu@amazon.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230712154449.6093-1-kuniyu@amazon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Harry Coin <hcoin@quietfountain.com>, Kuniyuki Iwashima <kuni1840@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net] bridge: Add extack warning when
 enabling STP in netns.
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

On 12/07/2023 18:44, Kuniyuki Iwashima wrote:
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
> Let's add extack warning when enabling STP in netns.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link set br0 type bridge stp_state 1
>   Warning: bridge: STP does not work in non-root netns.
> 
> Note this commit will be reverted later when we namespacify the whole LLC
> infra.
> 
> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
> Suggested-by: Harry Coin <hcoin@quietfountain.com>
> Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
> Suggested-by: Ido Schimmel <idosch@idosch.org>
> Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
> ---
> v2:
>   - Just add extack instead of returning error (Ido Schimmel)
> 
> v1: https://lore.kernel.org/netdev/20230711235415.92166-1-kuniyu@amazon.com/
> ---
>  net/bridge/br_stp_if.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index 75204d36d7f9..b65962682771 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,6 +201,9 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>  	ASSERT_RTNL();
>  
> +	if (!net_eq(dev_net(br->dev), &init_net))
> +		NL_SET_ERR_MSG_MOD(extack, "STP does not work in non-root netns");
> +
>  	if (br_mrp_enabled(br)) {
>  		NL_SET_ERR_MSG_MOD(extack,
>  				   "STP can't be enabled if MRP is already enabled");

Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
