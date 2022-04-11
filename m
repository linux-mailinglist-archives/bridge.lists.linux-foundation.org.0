Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8FD4FB6DA
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 11:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA9A9409C6;
	Mon, 11 Apr 2022 09:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UY1LJpnyTqZv; Mon, 11 Apr 2022 09:04:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3827E409EC;
	Mon, 11 Apr 2022 09:04:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E6985C0082;
	Mon, 11 Apr 2022 09:04:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EB8E0C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC3CD40990
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHNpgktnwixb for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 09:04:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A8E740983
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:03:59 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id w18so17442853edi.13
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 02:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=b5wwbXc/MkE2BXw9wRrOvThE2qwMTK/x2Eay3+i8p8Y=;
 b=RuXx0L0svxgM1uUy8O5SR+KE9fQGnauKe/NAG+6BRPfBuD/FSYwu4ue2VpaKvbDF+S
 sx/ts5r6zWUBwb07fKFEpz2WczUL3+IJqiki1yp6dxLGxRr7JOLQL5YzWB9899umkoak
 Qc6lX54QI5mfFTeBmMrJYmU3N1d6eakuWywVC6UvOO+TFXsdpepc5VUr9WU4dL7ffkSp
 WUFmdZPABDS5XAjIAaFnQ/7ovVG5g1SNm9NHjoRKwhHHlt5nJaHq8O5sxt9yRmvIBhFB
 KvBevQtqQ3calc3NDma+2E1IFjLtWNwXzHlp1SwaZMAwAjPl+7PLk2ogNaX6tqzWMLrA
 l1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=b5wwbXc/MkE2BXw9wRrOvThE2qwMTK/x2Eay3+i8p8Y=;
 b=0d2OtjT0CspE5q8m9ppJX9kA9zvMX3oGRCG1tBvCt/zsaeTTdaS7S4blNMWr2vlE68
 yGrVncT4iLiDc26fXVuHYtO+wJeIrBmHrxvt8XFx3whhc3ALCxE6/YuOQgvl5XyvVNvq
 02/gwXbPvGKC4St/Rvz1Hf/xYOtQgGuSZxzHythsq1RAx04q1FatR7JKNG63Hr30aB1/
 dW1/P8m8tPs+XskDrXpQelslwv111TBjkDcsG1UREXaT3aIJbRTqEiH504wkv+8ujHqP
 ob0M8fbCblnjw3PMDW7WPw/qwnIGJgAcWLo9lx+32ZpwpKfSCG2RN+mNG/IJi8teBOUA
 KllA==
X-Gm-Message-State: AOAM530F5Kf71u1LUtTfjrX5sotgyT9zxGispcJqa2C8YtR4ZigN/Ldq
 B5r+rxZBFSNPacTGa580tVGAHg==
X-Google-Smtp-Source: ABdhPJyzHuHW3cNV1xvb1igQYLrUkhhLP6uI1A5KIHPBfEWjrnGK2Dm60dUyzSFlcevD3bHHZP5QpA==
X-Received: by 2002:aa7:dacd:0:b0:41d:75df:62f with SMTP id
 x13-20020aa7dacd000000b0041d75df062fmr7182994eds.256.1649667838118; 
 Mon, 11 Apr 2022 02:03:58 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 h9-20020aa7c949000000b0041b4d8ae50csm14726914edt.34.2022.04.11.02.03.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 02:03:57 -0700 (PDT)
Message-ID: <56d91af5-3a5b-be05-a45f-936e427fe746@blackwall.org>
Date: Mon, 11 Apr 2022 12:03:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-6-razor@blackwall.org> <YlPtg6eHuWaOEy/7@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YlPtg6eHuWaOEy/7@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 5/6] net: bridge: fdb: add support for
 flush filtering based on ifindex
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

On 11/04/2022 11:57, Ido Schimmel wrote:
> On Sat, Apr 09, 2022 at 01:58:56PM +0300, Nikolay Aleksandrov wrote:
>> Add support for fdb flush filtering based on destination ifindex. The
>> ifindex must either match a port's device ifindex or the bridge's.
>>
>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>> ---
>>  include/uapi/linux/if_bridge.h | 1 +
>>  net/bridge/br_fdb.c            | 7 +++++++
>>  2 files changed, 8 insertions(+)
>>
>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>> index 4638d7e39f2a..67ee12586844 100644
>> --- a/include/uapi/linux/if_bridge.h
>> +++ b/include/uapi/linux/if_bridge.h
>> @@ -819,6 +819,7 @@ enum {
>>  	FDB_FLUSH_NDM_STATE_MASK,
>>  	FDB_FLUSH_NDM_FLAGS,
>>  	FDB_FLUSH_NDM_FLAGS_MASK,
>> +	FDB_FLUSH_PORT_IFINDEX,
>>  	__FDB_FLUSH_MAX
>>  };
>>  #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index 340a2ace1d5e..53208adf7474 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -628,6 +628,7 @@ static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
>>  	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
>>  	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
>>  	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
>> +	[FDB_FLUSH_PORT_IFINDEX]	= { .type = NLA_S32 },
>>  };
>>  
>>  int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
>> @@ -664,6 +665,12 @@ int br_fdb_flush_nlattr(struct net_bridge *br, struct nlattr *fdb_flush_attr,
>>  		ndm_flags_mask = nla_get_u16(fdb_flush_tb[FDB_FLUSH_NDM_FLAGS_MASK]);
>>  		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
>>  	}
>> +	if (fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]) {
>> +		int port_ifidx;
>> +
>> +		port_ifidx = nla_get_u32(fdb_flush_tb[FDB_FLUSH_PORT_IFINDEX]);
>> +		desc.port_ifindex = port_ifidx;
> 
> Commit message says "ifindex must either match a port's device ifindex
> or the bridge's", but there is no validation. I realize such an
> operation won't flush anything, but it's cleaner to just reject it here.
> 

Sure, I can add a check for the device when specified.

>> +	}
>>  
>>  	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
>>  		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
>> -- 
>> 2.35.1
>>

