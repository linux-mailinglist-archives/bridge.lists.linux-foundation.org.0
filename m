Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B006311B372
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 16:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54BDB20385;
	Wed, 11 Dec 2019 15:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5gbZvwdCLwiw; Wed, 11 Dec 2019 15:42:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 994CD22FF0;
	Wed, 11 Dec 2019 15:42:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 60072C1796;
	Wed, 11 Dec 2019 15:42:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 91BD4C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:42:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CFDD20117
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CG655U4zD8y7 for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 15:42:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id BCBE61FD42
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:42:37 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id c19so24508188lji.11
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 07:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+ux6ujPcuk8gllcblqRwaT5K70h+n2xn7FgUloO8zRg=;
 b=gDhUbvI4tRCdMgxYRZoJoUQ50czCguEOJYrNi3ulo0zMxdIK5VpmGQQZPIkTZNl5DW
 mmOxIpssuK00hFsAtsNdNPhYN492tPi62Dui0dz0VGFmwcoYYSUoHzy0HXr1rXc7e/Q/
 x6DxIck3CSij8wTZH5/EgIwLuxqOr7mI3rcAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+ux6ujPcuk8gllcblqRwaT5K70h+n2xn7FgUloO8zRg=;
 b=Eim56sCuvPlzfSDj/aN2AdjHsRyGnORsJgjoAYNeZjOQCTO6d8ls982/rB/G55yZ8n
 c+/tZOC3aDgmUBa/DMpm7tB92Hq+lKLF59uQW2Hn3AxgWvA1qoHTFXN+abPCIn//m6ce
 BSvyg2Dg/ZOw+rHowQwg5VqhsWurlOMqpCLG7ZQmaFgW2hK7xCctpzZWqmbJ0TEmM6iY
 IVs99IkTjxkb2C37CAAP+gUdh+zh1dgYYRbAFKS1ZRjyIwig7X/7rP5ORwN2V0XjiXA3
 zDL+6sSRM/vW+T7GMqYDvmEYwD1RsId8qCwSDwgRCMjg3aOvUMydRusiIO/zuEJRgxa1
 MtnA==
X-Gm-Message-State: APjAAAX/PqaN5zJ9Sdqsv2IHh3zDoOsmPAS0yfAHlrp0ZUQhN9L5Ei7f
 X6s1yUZtf0331VRNROHn2AtGgg==
X-Google-Smtp-Source: APXvYqwUbQik1ZyeQnZVuqINvdZ1xXdBQE7R5RqHqBGdthhRf0pOpXPBB4ArnujaonvViBiDjTNsNQ==
X-Received: by 2002:a2e:89da:: with SMTP id c26mr2628354ljk.54.1576078955786; 
 Wed, 11 Dec 2019 07:42:35 -0800 (PST)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id p15sm1361804lfo.88.2019.12.11.07.42.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 07:42:34 -0800 (PST)
To: David Ahern <dsahern@gmail.com>, Vivien Didelot
 <vivien.didelot@gmail.com>, "David S. Miller" <davem@davemloft.net>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
 <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <9f978ee1-08ee-aa57-6e3d-9b68657eeb14@cumulusnetworks.com>
Date: Wed, 11 Dec 2019 17:42:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

On 11/12/2019 17:38, David Ahern wrote:
> On 12/10/19 2:20 PM, Vivien Didelot wrote:
>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>> index 1b3c2b643a02..e7f2bb782006 100644
>> --- a/include/uapi/linux/if_bridge.h
>> +++ b/include/uapi/linux/if_bridge.h
>> @@ -156,6 +156,15 @@ struct bridge_vlan_xstats {
>>  	__u32 pad2;
>>  };
>>  
>> +struct bridge_stp_xstats {
>> +	__u64 transition_blk;
>> +	__u64 transition_fwd;
>> +	__u64 rx_bpdu;
>> +	__u64 tx_bpdu;
>> +	__u64 rx_tcn;
>> +	__u64 tx_tcn;
>> +};
>> +
>>  /* Bridge multicast database attributes
>>   * [MDBA_MDB] = {
>>   *     [MDBA_MDB_ENTRY] = {
>> @@ -261,6 +270,7 @@ enum {
>>  	BRIDGE_XSTATS_UNSPEC,
>>  	BRIDGE_XSTATS_VLAN,
>>  	BRIDGE_XSTATS_MCAST,
>> +	BRIDGE_XSTATS_STP,
>>  	BRIDGE_XSTATS_PAD,
>>  	__BRIDGE_XSTATS_MAX
>>  };
> 
> Shouldn't the new entry be appended to the end - after BRIDGE_XSTATS_PAD
> 

Oh yes, good catch. That has to be fixed, too.

