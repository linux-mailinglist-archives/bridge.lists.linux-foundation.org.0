Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB257CBF04
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:24:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68FA3401BB;
	Tue, 17 Oct 2023 09:24:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68FA3401BB
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=Ubumjgmi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pip-9oaFxA_t; Tue, 17 Oct 2023 09:24:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DC989401B3;
	Tue, 17 Oct 2023 09:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC989401B3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 810E2C0DD3;
	Tue, 17 Oct 2023 09:24:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EBEF1C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B458480E73
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B458480E73
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Ubumjgmi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6LLoWmKCBPm for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:24:48 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22CFE80D37
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22CFE80D37
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4066241289bso54827365e9.0
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697534686; x=1698139486;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3tGOFg7H1TmqXBAfJRaJdeyQCiUlN2QreaijLoKRz5c=;
 b=UbumjgmioTOFDwAWAFy/jyTM6C90SeWfV5ksjMqodxQhHWGjMveW0FENQSDJWZMO8N
 i5505UKv5g+ByEvbBVjzKR1gNufeGNdJ5i+5tgag6fAalk26g982Dx5We8UJ6QIdjboe
 rpjcYHff+1k51eZZgS90r59gGLoFrmjugIWQp6+sxuzsGSChWhWkGlKkuqQk+FbxiP5n
 mtmeCy4ybiFR1T2FN43DMThAeEqRYLUaxPjMF14ibcNiV3z5o7FrzkxFwOYYR2iqRFZ7
 H7KudKST7yeb14tDl2AEH/owjXlxlojXPFHghLeIgqSfiuoGoYFBO0buCu91NaDAIKWV
 CYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697534686; x=1698139486;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3tGOFg7H1TmqXBAfJRaJdeyQCiUlN2QreaijLoKRz5c=;
 b=ek8vbl4NhPeKIUfG6PbFt4W4MoB4/dkrwLiM6tOHHpe6KV1I9xGBGgA+AEEZ9Ff6VQ
 rkDiEKXqRrmcJtha+OgqJM8zX52q5bg3rM+4YsVyjPI0rKGCroV5j2bmiHKZoARVi26r
 w8Pzen/d4zvxQpMGLBtA/Bj9eBxy/sCGBrCKc5F3bnZOWnhpU/AEFGTeVDzubLW/qOtD
 UacXeYs4YTqjegJmE8oRz+5ZubpabsT2D6sKF4Or5Vqn7FXU9I8JM1nWlX0DXWAb8124
 SDPp2jkp9hdC5re5Yleel6z5Gt1DayjWAdSk3MH84gI2HxK/9g4R0Ny20b2Yi5HUjaia
 PxUQ==
X-Gm-Message-State: AOJu0YxvAJpCpiDoj9h8nEmynZLtVTN2aut/3qy58cG7I9yZkKFAk1mb
 Ebl2s4UM0yqa498j26Bm8z8lfw==
X-Google-Smtp-Source: AGHT+IGQvKnlNFf1auRtDN5P9Q4PfP+eoxePLcr3PN2FB1Y7ojtRREYaCP6qIk1syUmmwzf2kodwDw==
X-Received: by 2002:a05:600c:3587:b0:407:7e4b:67e7 with SMTP id
 p7-20020a05600c358700b004077e4b67e7mr1167063wmq.39.1697534686229; 
 Tue, 17 Oct 2023 02:24:46 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 3-20020a05600c234300b0040813e14b49sm775298wmq.30.2023.10.17.02.24.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:24:45 -0700 (PDT)
Message-ID: <141f0fc1-f024-d437-dae2-e074523c9bf8@blackwall.org>
Date: Tue, 17 Oct 2023 12:24:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-10-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-10-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 09/13] bridge: mcast: Add MDB get
	support
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Implement support for MDB get operation by looking up a matching MDB
> entry, allocating the skb according to the entry's size and then filling
> in the response. The operation is performed under the bridge multicast
> lock to ensure that the entry does not change between the time the reply
> size is determined and when the reply is filled in.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_device.c  |   1 +
>   net/bridge/br_mdb.c     | 154 ++++++++++++++++++++++++++++++++++++++++
>   net/bridge/br_private.h |   9 +++
>   3 files changed, 164 insertions(+)
> 
[snip]
> +int br_mdb_get(struct net_device *dev, struct nlattr *tb[], u32 portid, u32 seq,
> +	       struct netlink_ext_ack *extack)
> +{
> +	struct net_bridge *br = netdev_priv(dev);
> +	struct net_bridge_mdb_entry *mp;
> +	struct sk_buff *skb;
> +	struct br_ip group;
> +	int err;
> +
> +	err = br_mdb_get_parse(dev, tb, &group, extack);
> +	if (err)
> +		return err;
> +
> +	spin_lock_bh(&br->multicast_lock);

Since this is only reading, could we use rcu to avoid blocking mcast 
processing?

> +
> +	mp = br_mdb_ip_get(br, &group);
> +	if (!mp) {
> +		NL_SET_ERR_MSG_MOD(extack, "MDB entry not found");
> +		err = -ENOENT;
> +		goto unlock;
> +	}
> +
> +	skb = br_mdb_get_reply_alloc(mp);
> +	if (!skb) {
> +		err = -ENOMEM;
> +		goto unlock;
> +	}
> +
> +	err = br_mdb_get_reply_fill(skb, mp, portid, seq);
> +	if (err) {
> +		NL_SET_ERR_MSG_MOD(extack, "Failed to fill MDB get reply");
> +		goto free;
> +	}
> +
> +	spin_unlock_bh(&br->multicast_lock);
> +
> +	return rtnl_unicast(skb, dev_net(dev), portid);
> +
> +free:
> +	kfree_skb(skb);
> +unlock:
> +	spin_unlock_bh(&br->multicast_lock);
> +	return err;
> +}

