Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E91DD4FB6E8
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 11:07:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D185E41607;
	Mon, 11 Apr 2022 09:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id THIBzENyhu0p; Mon, 11 Apr 2022 09:07:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 210FA415FB;
	Mon, 11 Apr 2022 09:07:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4589C0084;
	Mon, 11 Apr 2022 09:07:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A41C4C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 844D582BBC
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37W93jWWz8Vr for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 09:07:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C26082B8C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:07:17 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id g20so17492029edw.6
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 02:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Urg3WNbWAAbmT/1unZ8S+i2ajaf9UWWtyCFD6wiRjuI=;
 b=ibyW2IIHcc8wVZkOHS/s3WSv0MoDzWtmuPnwfhxKEi4RzBk+lE+OjaZj1DhEPuw3Hy
 6NJ+CVirQCZZcErNoU0TAeox7TvSA/CXrx4gFqLwyEAmtLusg2Gr1PN5ur2YAPvxGmMx
 l1llRE5cg55Kho7+i0Suwu/IgcZ5k6U+blXsx/wc1j5CokN/Ry6tC01zoSbllzYJNACg
 XPkLEi65esJc8k4lnuPC40ZEp1Od8Y5LSzhcmhOtqZMMvnDrZTcodeFp2SWWjdlOUNsK
 8FLIvFyFV/lB5HpY7PItzvZJ8xADMKRWwUY9xYisLDX7x052HHECkMO+7GDDEzpz1jbu
 7syw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Urg3WNbWAAbmT/1unZ8S+i2ajaf9UWWtyCFD6wiRjuI=;
 b=kG6kT7LqJUMMLuZkoB8QMISfgTXiYvWMripg3LGK85qXDzdvhK2mRrSg/mk6NdCjXx
 1Zf5CVtPHg/RuANGxvqWGvjTroeG7fSFrWLG/RadM78hjvoc61GeLlsBNI+yPl86Ir3i
 ZTWEdV79L4AKMR0dZr4l/6FA1RG/73/zxqh2lVOCdSwLBm4zfZVtgFjL91QfTxt3K01G
 9lCFbAIy3EarCu3hMOQwF5xCy56oQwX5+lBB1abiGG2n9ZXhhsNUqkYw6Ns6DLqeoWje
 MPuZ7+cV2uymbeiXSLMOO67nVgxG4r3qxwv1EUiU+brG8kTBHzIUXfeBIeklBZuNaQ0I
 kNYQ==
X-Gm-Message-State: AOAM531NuABJgSTp4+FoXHpqp1TM2BdquGkvmbaot8SYU5rU+7mDyLsF
 mYYYnPk6ZTAGG2wfnUwvqYcOkw==
X-Google-Smtp-Source: ABdhPJzhJalaqUptPqm4oxnVKC+KyE7L+rULrYE4tCHqDaE2vTvvQb6dq2zbbq1HN4y7QNIjT/3USw==
X-Received: by 2002:a05:6402:26c8:b0:419:2e54:9262 with SMTP id
 x8-20020a05640226c800b004192e549262mr31862541edd.61.1649668035740; 
 Mon, 11 Apr 2022 02:07:15 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 w14-20020a509d8e000000b0041cd217726dsm11336827ede.4.2022.04.11.02.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 02:07:15 -0700 (PDT)
Message-ID: <a869797f-8501-3766-36ae-b73b76e8f7e7@blackwall.org>
Date: Mon, 11 Apr 2022 12:07:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-5-razor@blackwall.org> <YlPrJaWjeObhxmwb@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YlPrJaWjeObhxmwb@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 4/6] net: bridge: fdb: add support for
 flush filtering based on ndm flags and state
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

On 11/04/2022 11:47, Ido Schimmel wrote:
> On Sat, Apr 09, 2022 at 01:58:55PM +0300, Nikolay Aleksandrov wrote:
>> Add support for fdb flush filtering based on ndm flags and state. The
>> new attributes allow users to specify a mask and value which are mapped
>> to bridge-specific flags. NTF_USE is used to represent added_by_user
>> flag since it sets it on fdb add and we don't have a 1:1 mapping for it.
>>
>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>> ---
>>  include/uapi/linux/if_bridge.h |  4 +++
>>  net/bridge/br_fdb.c            | 55 ++++++++++++++++++++++++++++++++++
>>  2 files changed, 59 insertions(+)
>>
>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>> index 2f3799cf14b2..4638d7e39f2a 100644
>> --- a/include/uapi/linux/if_bridge.h
>> +++ b/include/uapi/linux/if_bridge.h
>> @@ -815,6 +815,10 @@ enum {
>>  /* embedded in BRIDGE_FLUSH_FDB */
>>  enum {
>>  	FDB_FLUSH_UNSPEC,
>> +	FDB_FLUSH_NDM_STATE,
>> +	FDB_FLUSH_NDM_STATE_MASK,
>> +	FDB_FLUSH_NDM_FLAGS,
>> +	FDB_FLUSH_NDM_FLAGS_MASK,
>>  	__FDB_FLUSH_MAX
>>  };
>>  #define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index 62f694a739e1..340a2ace1d5e 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -594,8 +594,40 @@ void br_fdb_flush(struct net_bridge *br,
>>  	rcu_read_unlock();
>>  }
>>  
>> +static unsigned long __ndm_state_to_fdb_flags(u16 ndm_state)
>> +{
>> +	unsigned long flags = 0;
>> +
>> +	if (ndm_state & NUD_PERMANENT)
>> +		__set_bit(BR_FDB_LOCAL, &flags);
>> +	if (ndm_state & NUD_NOARP)
>> +		__set_bit(BR_FDB_STATIC, &flags);
>> +
>> +	return flags;
>> +}
>> +
>> +static unsigned long __ndm_flags_to_fdb_flags(u16 ndm_flags)
>> +{
>> +	unsigned long flags = 0;
>> +
>> +	if (ndm_flags & NTF_USE)
>> +		__set_bit(BR_FDB_ADDED_BY_USER, &flags);
>> +	if (ndm_flags & NTF_EXT_LEARNED)
>> +		__set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &flags);
>> +	if (ndm_flags & NTF_OFFLOADED)
>> +		__set_bit(BR_FDB_OFFLOADED, &flags);
>> +	if (ndm_flags & NTF_STICKY)
>> +		__set_bit(BR_FDB_STICKY, &flags);
>> +
>> +	return flags;
>> +}
>> +
>>  static const struct nla_policy br_fdb_flush_policy[FDB_FLUSH_MAX + 1] = {
>>  	[FDB_FLUSH_UNSPEC]	= { .type = NLA_REJECT },
>> +	[FDB_FLUSH_NDM_STATE]	= { .type = NLA_U16 },
>> +	[FDB_FLUSH_NDM_FLAGS]	= { .type = NLA_U16 },
>> +	[FDB_FLUSH_NDM_STATE_MASK]	= { .type = NLA_U16 },
>> +	[FDB_FLUSH_NDM_FLAGS_MASK]	= { .type = NLA_U16 },
> 
> Might be better to use NLA_POLICY_MASK(NLA_U16, mask) and reject
> unsupported states / flags instead of just ignoring them?
> 

Yep, forgot about that one. Good point!


