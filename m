Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4D07CBE84
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C50440949;
	Tue, 17 Oct 2023 09:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C50440949
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=fy+obZdn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJW0sMyLIEPa; Tue, 17 Oct 2023 09:08:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 43B3841518;
	Tue, 17 Oct 2023 09:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43B3841518
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E737BC0DD3;
	Tue, 17 Oct 2023 09:08:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0160C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9973C41518
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9973C41518
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j2Z-VmcdWmlN for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:08:34 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 506AF40949
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 506AF40949
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-3296b49c546so4405609f8f.3
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533712; x=1698138512;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MTB0PMaH81cPxzWaC0ockKjG/083eP/4X9lYMUVdtT8=;
 b=fy+obZdnpLksIL4xFOkAav/ISMckrWGOGoquYF5Kju29HzQXbFbLSqbZ+mBU5SE1RQ
 XiRDHnnx5v8ECCUl/aHF4eIhdIvV2aJ4NonOTN4r8xMU/ES/Ab9PoMv1O/drNu7pMFHA
 JUnO+TcxoCUXeDoRpGNUCqE+hHCtpNtj8x2KfyWNCOhr6jbdkcTUuXhRkThF9XAcRKJc
 Z8XLJ44G3SgVjfkcghIgwOHyh0aTGhy81j8FUjnAgCmZ8xrpef1AqTH78V6I7qGC1kx1
 G/5Gh279rnOU1rkTdPFW0yUgsEqxKz0SV1G87PMIcBjJ43/nb0m0J2f1OpAW0d0d3eaE
 294g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533712; x=1698138512;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MTB0PMaH81cPxzWaC0ockKjG/083eP/4X9lYMUVdtT8=;
 b=gjb5/l3mUK7UZLp1r0KwwWkK+xVvF6eYfkqr+Gyzsq4pOIAdJjxGfnEewd36+jULsK
 6yAPMt7hw99njQuSMCj6bGPyvvwyhmOLDPBiHkv7BkLuRwb2cOYxG7v91DI3v1nTGbuq
 tK7ECt7PBn8T1mkorHZNkcXEzx5Tl/yDvxERxdmsUvnLvdRT0SBclDx8eqsvjpVkcS0W
 uRIrE3u9SH3KZ62SUhlldec63EZt+R9+HJWSBinGygXSS4W1XAWQC8VGu0M69hGHZjd8
 PL5sWF6UVe6nZXh0rDr6pAakjYhWjNP9QLUArVpJJ6z5ea/3WibcqcXvJYd9KrNHZoKp
 CuIg==
X-Gm-Message-State: AOJu0YzbrASyLe56JiQOuPBZcF3Oc8cTATebWNME/gCylWUWnUfX5eV4
 kjp1ab/3G229kZqSXEEtYzcE/Q==
X-Google-Smtp-Source: AGHT+IEKlKUjAzEYYG9bMLZQN2BDOsUYVxWI1cNAYo4pvWcT5Cpe/y+SIVSa1+2HJShKv/WHKr20Hg==
X-Received: by 2002:adf:e908:0:b0:31f:f99c:6009 with SMTP id
 f8-20020adfe908000000b0031ff99c6009mr1487116wrm.22.1697533712286; 
 Tue, 17 Oct 2023 02:08:32 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 f5-20020a5d50c5000000b003140f47224csm1213811wrt.15.2023.10.17.02.08.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:08:31 -0700 (PDT)
Message-ID: <b3e0d656-cb25-3ac8-6391-8fb27217470b@blackwall.org>
Date: Tue, 17 Oct 2023 12:08:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 07/13] bridge: add MDB get uAPI
	attributes
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
> Add MDB get attributes that correspond to the MDB set attributes used in
> RTM_NEWMDB messages. Specifically, add 'MDBA_GET_ENTRY' which will hold
> a 'struct br_mdb_entry' and 'MDBA_GET_ENTRY_ATTRS' which will hold
> 'MDBE_ATTR_*' attributes that are used as indexes (source IP and source
> VNI).
> 
> An example request will look as follows:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_GET_ENTRY ]
> 	struct br_mdb_entry
> [ MDBA_GET_ENTRY_ATTRS ]
> 	[ MDBE_ATTR_SOURCE ]
> 		struct in_addr / struct in6_addr
> 	[ MDBE_ATTR_SRC_VNI ]
> 		u32
> 

Could you please add this info as a comment above the enum?
Similar to the enum below it. It'd be nice to have an example
of what's expected.

> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   include/uapi/linux/if_bridge.h | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index f95326fce6bb..7e1bf080b414 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -723,6 +723,14 @@ enum {
>   };
>   #define MDBA_SET_ENTRY_MAX (__MDBA_SET_ENTRY_MAX - 1)
>   
> +enum {
> +	MDBA_GET_ENTRY_UNSPEC,
> +	MDBA_GET_ENTRY,
> +	MDBA_GET_ENTRY_ATTRS,
> +	__MDBA_GET_ENTRY_MAX,
> +};
> +#define MDBA_GET_ENTRY_MAX (__MDBA_GET_ENTRY_MAX - 1)
> +
>   /* [MDBA_SET_ENTRY_ATTRS] = {
>    *    [MDBE_ATTR_xxx]
>    *    ...

