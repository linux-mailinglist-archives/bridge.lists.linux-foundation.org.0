Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 223A1532DB2
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 17:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70D2C82D14;
	Tue, 24 May 2022 15:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4_13v_avmVyX; Tue, 24 May 2022 15:39:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7D09583F1C;
	Tue, 24 May 2022 15:39:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 369C6C007E;
	Tue, 24 May 2022 15:39:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E917BC002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6375410A8
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9L81SM5LyDu for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 15:39:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 330E1409E3
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:39:06 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id u3so26291741wrg.3
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 08:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=h7r5aQ2w5OifNsIkpCoXMifoXPvuX3aY8xJJkG9EXtw=;
 b=N8KrblnWf/1Gd8SH3jlgYJfY/xNV2wjof6Mna4pghYvc1UdsO31fVScY0vu9Ah65TX
 angBNbUaT55stx0kDug7PuDc4Y8kQfIzfr2Pgya95z2eAHlAMgbAQuuiIi3mkBGNdRV4
 lk2Y2Xwi5Dce4uJVhCRAMzVM9yk4i/pZ6WMA8Vy5yvZp3sYUybbkTwKPrn9d0MOhY6E7
 yhygy3oLUNBEZ8Tk4f++J/+babcMzzMP/k+htNTxiYp1y/kyfoBI4Xe+M4mlr3QGU2OP
 kfl83txIR5FOrW9ELEHpoG8QmtxDT3xifA/jb/+EdQqurvlISqH8Ey+Q0peJtNhNiTat
 OVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=h7r5aQ2w5OifNsIkpCoXMifoXPvuX3aY8xJJkG9EXtw=;
 b=u1BK+uDaxBMl/Hg7jsFx/+phYkfJzL8tU7JbH9738k30H4/fxVcObLzqQSsqLrF18B
 p3moj2oZRGEjvpjq/n0u+9xK7P3rki5VfUqutuVbbQYa/O2Nwp1Vq3AA1RcKxL1m7nC4
 wvHAof5Zj5zB+UuruMis79FK2jo3oaIVgzFVv54GHjmKm3h8qgkyA8sAhMYtGSHPvFCl
 dxQkG81vSKPOwYUTriInpmUGFKAK9tP9Ilb0xs1juqpFFuGk1PZTSzABroInSPBrcZN8
 88ncp1msXIhYZKbRqMXaG61Fgnfv6Dlal1srKHUDjMetuqWzTONBiAY7e+YiWhJCOnJY
 uT3g==
X-Gm-Message-State: AOAM532zaA39VIkrmbsKXP/n4V6hHKWCrUYLsKpDP0TboPO0fflDBddZ
 p89Rfvw/f7tMLOxbVZGCaQOxoA==
X-Google-Smtp-Source: ABdhPJyLc8Hoyt2GuHKUKSWnfiyo0dtTUxgy0oarseFAy0Arfimt0aCjeNBFi1oFUYlcolmCYAXauQ==
X-Received: by 2002:adf:fb10:0:b0:207:af88:1eb9 with SMTP id
 c16-20020adffb10000000b00207af881eb9mr24509733wrr.238.1653406744205; 
 Tue, 24 May 2022 08:39:04 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 c13-20020adfc04d000000b0020fee88d0f2sm3196776wrf.0.2022.05.24.08.39.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 May 2022 08:39:03 -0700 (PDT)
Message-ID: <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
Date: Tue, 24 May 2022 18:39:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
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

On 24/05/2022 18:21, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. This feature corresponds
> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> latter defined by Cisco.
> Locked FDB entries will be limited in number, so as to prevent DOS
> attacks by spamming the port with random entries. The limit will be
> a per port limit as it is a port based feature and that the port flushes
> all FDB entries on link down.
> 
> Only the kernel can set this FDB entry flag, while userspace can read
> the flag and remove it by deleting the FDB entry.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  include/uapi/linux/neighbour.h |  1 +
>  net/bridge/br_fdb.c            | 11 +++++++++++
>  net/bridge/br_if.c             |  1 +
>  net/bridge/br_input.c          | 11 ++++++++++-
>  net/bridge/br_private.h        |  7 ++++++-
>  5 files changed, 29 insertions(+), 2 deletions(-)
> 

Hi Hans,
So this approach has a fundamental problem, f->dst is changed without any synchronization
you cannot rely on it and thus you cannot account for these entries properly. We must be very
careful if we try to add any new synchronization not to affect performance as well.
More below...

> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
> index 39c565e460c7..76d65b481086 100644
> --- a/include/uapi/linux/neighbour.h
> +++ b/include/uapi/linux/neighbour.h
> @@ -53,6 +53,7 @@ enum {
>  #define NTF_ROUTER	(1 << 7)
>  /* Extended flags under NDA_FLAGS_EXT: */
>  #define NTF_EXT_MANAGED	(1 << 0)
> +#define NTF_EXT_LOCKED	(1 << 1)
>  
>  /*
>   *	Neighbor Cache Entry States.
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e7f4fccb6adb..6b83e2d6435d 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  	struct nda_cacheinfo ci;
>  	struct nlmsghdr *nlh;
>  	struct ndmsg *ndm;
> +	u32 ext_flags = 0;
>  
>  	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>  	if (nlh == NULL)
> @@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  		ndm->ndm_flags |= NTF_EXT_LEARNED;
>  	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>  		ndm->ndm_flags |= NTF_STICKY;
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
> +		ext_flags |= NTF_EXT_LOCKED;
>  
>  	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>  		goto nla_put_failure;
>  	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>  		goto nla_put_failure;
> +	if (nla_put_u32(skb, NDA_FLAGS_EXT, ext_flags))
> +		goto nla_put_failure;
> +
>  	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>  	ci.ndm_confirmed = 0;
>  	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
> @@ -171,6 +177,7 @@ static inline size_t fdb_nlmsg_size(void)
>  	return NLMSG_ALIGN(sizeof(struct ndmsg))
>  		+ nla_total_size(ETH_ALEN) /* NDA_LLADDR */
>  		+ nla_total_size(sizeof(u32)) /* NDA_MASTER */
> +		+ nla_total_size(sizeof(u32)) /* NDA_FLAGS_EXT */
>  		+ nla_total_size(sizeof(u16)) /* NDA_VLAN */
>  		+ nla_total_size(sizeof(struct nda_cacheinfo))
>  		+ nla_total_size(0) /* NDA_FDB_EXT_ATTRS */
> @@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>  	if (test_bit(BR_FDB_STATIC, &f->flags))
>  		fdb_del_hw_addr(br, f->key.addr.addr);
>  
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
> +		atomic_dec(&f->dst->locked_entry_cnt);

Sorry but you cannot do this for multiple reasons:
 - f->dst can be NULL
 - f->dst changes without any synchronization
 - there is no synchronization between fdb's flags and its ->dst

Cheers,
 Nik
