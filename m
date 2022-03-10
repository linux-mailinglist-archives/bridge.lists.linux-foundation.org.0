Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF604D498A
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62D5540347;
	Thu, 10 Mar 2022 14:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WUzIzpZbLSq; Thu, 10 Mar 2022 14:43:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AD9A740187;
	Thu, 10 Mar 2022 14:42:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69E2EC0073;
	Thu, 10 Mar 2022 14:42:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A316BC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 869D94157F
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUuIIG0h3um6 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:42:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EB5341570
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:42:55 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id h11so8042075ljb.2
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 06:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=oX+0+0DrmOoX0UExiTkiHRjD/PO3ZH5Ft00ctb+zEKI=;
 b=BPRxLuF7n9XtXKwdeuqh95S7kLErSQclSFQdNbqGbFJzJDWmH3Wb/7tEyV1xG95wMw
 3kfJn51SgR+rTE1KpBjnUHqhhPoUXLJkWK+2Sf6IzO+SXdPbgjlz4oTP4PumMIuY1Kh9
 82W408Q+3DHPUpvvBOA94keBEAhpUUShpbH0B+Pc+PJD2Ftg49ukCTKAiwNEOvfhD/Lf
 0TMEKTsBipQwuvdQH7hRdmkTpVhg84LKl76WgqErn7VycOpPuBNIXbyTdgEBwpCnlBB1
 VmWf2fE/wBz0r3YFwYTUg3Bg7BE2NJX8UgNpaxHiC/UtDM0JXF4h6uIS0ZkI0vC+k1zS
 cKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=oX+0+0DrmOoX0UExiTkiHRjD/PO3ZH5Ft00ctb+zEKI=;
 b=xsy7w4fXMkGrSdAQVNxTSQaND4SaILe5UNR/PBp7eIB91zPsF4XYai5gYfC0NlD2lj
 ho63XPKmFbzZJtWxym2tvMMSYEi0GzkZDsKH7jOVDEs6lKcqkoiGHXqNo9OyRzpWwkN6
 2WSnEphjvT/ldql9exF64k7/zHr1wbMiWmdaNnyI+zS+TtnnOA3GcWCWKkXD/fGFfvRx
 q3oZFgxg9/jiYws4AF8Wtusgh6dmX5Axwmyy3Wqr7Uh5n8RRnbC2efKcDEf9/4kN4U6a
 s2sqs1ayRmATNENsudqLRlQnLf5V9vl7Vz3cQGQMfWl266Fdl78StcGBdxhLL2/Zln2I
 E7/Q==
X-Gm-Message-State: AOAM533ij6UcCOqn0Fs+Ch+Ez527wThT/kNItuMyvAMIDXD+AYd9AoOu
 LBcrP2h0z3+d7ve7X7T+bxzFDg==
X-Google-Smtp-Source: ABdhPJzP722lajsvMrc+HnxWeW8vAyZEGMHRiNsgRflMATS3Pym4yKLaKJpYUjtyELBKGe+n4wy8BQ==
X-Received: by 2002:a2e:8745:0:b0:248:600:6649 with SMTP id
 q5-20020a2e8745000000b0024806006649mr3207422ljj.63.1646923373450; 
 Thu, 10 Mar 2022 06:42:53 -0800 (PST)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 t2-20020a2e2d02000000b00244dc8ba5absm1100714ljt.117.2022.03.10.06.42.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Mar 2022 06:42:53 -0800 (PST)
Message-ID: <0eeaf59f-e7eb-7439-3c0a-17e7ac6741f0@blackwall.org>
Date: Thu, 10 Mar 2022 16:42:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: add fdb flag to
 extent locked port feature
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

On 10/03/2022 16:23, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. This feature corresponds
> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> latter defined by Cisco.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>   include/uapi/linux/neighbour.h |  1 +
>   net/bridge/br_fdb.c            |  6 ++++++
>   net/bridge/br_input.c          | 11 ++++++++++-
>   net/bridge/br_private.h        |  3 ++-
>   4 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
> index db05fb55055e..83115a592d58 100644
> --- a/include/uapi/linux/neighbour.h
> +++ b/include/uapi/linux/neighbour.h
> @@ -208,6 +208,7 @@ enum {
>   	NFEA_UNSPEC,
>   	NFEA_ACTIVITY_NOTIFY,
>   	NFEA_DONT_REFRESH,
> +	NFEA_LOCKED,
>   	__NFEA_MAX
>   };

Hmm, can you use NDA_FLAGS_EXT instead ?
That should simplify things and reduce the nl size.

>   #define NFEA_MAX (__NFEA_MAX - 1)
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6ccda68bd473..396dcf3084cf 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>   	struct nda_cacheinfo ci;
>   	struct nlmsghdr *nlh;
>   	struct ndmsg *ndm;
> +	u8 ext_flags = 0;
>   
>   	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>   	if (nlh == NULL)
> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>   		ndm->ndm_flags |= NTF_EXT_LEARNED;
>   	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>   		ndm->ndm_flags |= NTF_STICKY;
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
> +		ext_flags |= 1 << NFEA_LOCKED;
>   
>   	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>   		goto nla_put_failure;
>   	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>   		goto nla_put_failure;
> +	if (nla_put_u8(skb, NDA_FDB_EXT_ATTRS, ext_flags))
> +		goto nla_put_failure;
> +
>   	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>   	ci.ndm_confirmed = 0;
>   	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index e0c13fcc50ed..897908484b18 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -75,6 +75,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>   	struct net_bridge_mcast *brmctx;
>   	struct net_bridge_vlan *vlan;
>   	struct net_bridge *br;
> +	unsigned long flags = 0;

Please move this below...

>   	u16 vid = 0;
>   	u8 state;
>   
> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>   			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>   
>   		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
> +			if (!fdb_src) {

... here where it's only used.

> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
> +				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
> +			}
>   			goto drop;
> +		} else {
> +			if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags))
> +				goto drop;
> +		}
>   	}
>   
>   	nbp_switchdev_frame_mark(p, skb);
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 48bc61ebc211..f5a0b68c4857 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -248,7 +248,8 @@ enum {
>   	BR_FDB_ADDED_BY_EXT_LEARN,
>   	BR_FDB_OFFLOADED,
>   	BR_FDB_NOTIFY,
> -	BR_FDB_NOTIFY_INACTIVE
> +	BR_FDB_NOTIFY_INACTIVE,
> +	BR_FDB_ENTRY_LOCKED,
>   };
>   
>   struct net_bridge_fdb_key {

