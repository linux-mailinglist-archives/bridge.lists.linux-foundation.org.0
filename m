Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4177C13ADBD
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 16:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5385868F7;
	Tue, 14 Jan 2020 15:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfPAF2BkjXeg; Tue, 14 Jan 2020 15:34:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33BEA865F6;
	Tue, 14 Jan 2020 15:34:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08E1DC1D8D;
	Tue, 14 Jan 2020 15:34:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA2F0C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 15:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB703865EE
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 15:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyiWCmCNLf-i for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 15:34:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3403E865CD
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 15:34:08 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id v69so11844224ili.10
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 07:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IA2delY+nvouL7k3WAzaksVLLZyCKVj7Nj88hB3F63s=;
 b=GYrmOPaepSu5FE6sfqecFvPZF773kgYg1vEEYvE1MbxANRsiSYvBfYILVlNDEdGhFO
 JUSGMofsQoayPlsa6FZcB9iMp9QZ0BrtlSbXser6l9hz1+MXlF8TIJWV9wu8l0juOa4e
 g+Zd5QNvCFTXHNT/JnUbdNFiuWpvINsRHcohiM3zW2UMJng0/82ZQq6UDkgO3zABBHkn
 1AMokmHlCQgEhi9uKoARCID/6Ta4moGt3wXoN83JCl34IPN/6jrsj0PfjOTejxnjS1sh
 huOkILHsB+O0ZM1bk7RezUbAMXZVrgZKNX5za1Uz/p/g4YOXIriT2aTCYk9PONAM+IFu
 WsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IA2delY+nvouL7k3WAzaksVLLZyCKVj7Nj88hB3F63s=;
 b=FkmUu6YaZvP9Y1GDKeHKtrhXtLQoTFMokE/uJzyiYBbDI6eYmRwjtjSI5nm/5xStcv
 A+vzPnEmJ5gPy0yQ9wkSkdhTeo77TvjlAFokeOYhTISfzc3a1wt27DoLjhsh1aIOEqDb
 Prvs9ZrRDsouqxdBTzf1N6qGdxj77qpwCxK3e074oBx61Nh/AGDYPHls4siHUcHpS2Ib
 I5HeKMS0F27Bslok4SajSff9FsdM6SnGA7hf3BMIVbUsXSZgUAqOYkH6DGZkaPPcQNAd
 TEUPSq6JpA2tjMHvm9ug9GVgDYAEkdkTKN2Nm0HYuINu0rpPH5kS1mAX45LhEiYYimWd
 AT/Q==
X-Gm-Message-State: APjAAAVZ+MMhAOVxpWUyDTP1G3klLoVWm4a9g55kCSnfQg7OJXyMeryC
 u9vlu0btcrzBK85+cH9g2mt7gz2yE2E=
X-Google-Smtp-Source: APXvYqy4EQ5q2vS5jOO1rALE9FgwCv5EWidXPJI6HFMbhK/OkGw95obVhBdcrJjmlNTgASF9EEMw4A==
X-Received: by 2002:a92:5e13:: with SMTP id s19mr3756428ilb.305.1579016047199; 
 Tue, 14 Jan 2020 07:34:07 -0800 (PST)
Received: from ?IPv6:2601:282:800:7a:ad53:3eb0:98a5:6359?
 ([2601:282:800:7a:ad53:3eb0:98a5:6359])
 by smtp.googlemail.com with ESMTPSA id k22sm3554959ioj.24.2020.01.14.07.34.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 07:34:06 -0800 (PST)
To: Jakub Kicinski <kuba@kernel.org>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
From: David Ahern <dsahern@gmail.com>
Message-ID: <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
Date: Tue, 14 Jan 2020 08:34:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
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

On 1/14/20 6:55 AM, Jakub Kicinski wrote:
> On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
>> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
>> +{
>> +	int idx = 0, err = 0, s_idx = cb->args[0];
>> +	struct net *net = sock_net(skb->sk);
>> +	struct br_vlan_msg *bvm;
>> +	struct net_device *dev;
>> +
>> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {
> 
> I wonder if it'd be useful to make this a strict != check? At least
> when strict validation is on? Perhaps we'll one day want to extend 
> the request?
> 

+1. All new code should be using the strict checks.

