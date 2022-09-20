Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6E45BE156
	for <lists.bridge@lfdr.de>; Tue, 20 Sep 2022 11:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1085560C1D;
	Tue, 20 Sep 2022 09:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1085560C1D
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=nvC7B5pu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n94vtjC0L4jq; Tue, 20 Sep 2022 09:05:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 29AEB60D72;
	Tue, 20 Sep 2022 09:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29AEB60D72
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AACF9C0077;
	Tue, 20 Sep 2022 09:05:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 166DBC002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAA294172F
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAA294172F
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=nvC7B5pu
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpZaYM0ocfIz for <bridge@lists.linux-foundation.org>;
 Tue, 20 Sep 2022 09:05:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5025B408BD
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5025B408BD
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:05:28 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id y3so4592099ejc.1
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 02:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=mzfcqpBkglh/gR500QL3rZ/H+YTKdF7NYoFfORcrUF8=;
 b=nvC7B5puBTkanDM2WAtQpj1DNNpkPTP5davaWRsUkcxnKe6ZC9G1ytrMkFHrKKA3mu
 Ejme7m7jGZGm7levGS6nGS3XQtesd8RLF6snWkWieIYfc7y9DIKLH9DwhuwQKrWIHdUu
 ohiUx0cyND8cY31YsjSGX11CR7PgiqsnsD5wmv+EZaVaSn2PJZQ7ivk8At966B9j+MDf
 HBPx9frB57nB5rEY9wsElR9bmlOwZgH6sHGLKJc4jgRyxCjMcNxbRTSqV++/k4V44JeL
 TgUsZtShVuQdU8PeGJV0OjdSqIkTXvG1Bg99tPCGzjg0tr2VbBF7GM/bCw0mzN07x7JS
 vqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=mzfcqpBkglh/gR500QL3rZ/H+YTKdF7NYoFfORcrUF8=;
 b=FKSYXNiYPPxhE00iDw8wg902KfOryErkMKUe0BFC5V2Rp/4c6e5Las9ECXrAwuZCzK
 tSUI4lfJK/AcvxvQoqcaoOHS7uYFUXhXTen2cGKqysXMBhOfET4o2HfHNxTOVIHqq+Gf
 6p5jSGbJG/J4MPX0wBYifY/OK2EaK7foSzIKe/cDs99QltdUmF9Vj75O/NuIOu3m2l4Z
 vyFpoOvo5Bf+TtMJUCog0PhwXB0Cs9l6nr6LrVOPmYOcyUOk6O5d7GpTBqpgUZksE1IH
 EGu0669RQs5+XGIWNZJ/qpYjdX8ENG0I5X3KNZtlGne79DAIeD6xY/Q+M1kV3yfQUVSa
 r2PA==
X-Gm-Message-State: ACrzQf0Z6N8EuISPaASqebnvphJIenc0GpRa1SLnfcbieIZYgg+PnBVy
 uKki/fIJdeQh7hbEGWwcmfHMWamBwfLx90gw
X-Google-Smtp-Source: AMsMyM5OCtwf1QDqpUMZvbZsQ4NnB5yK+DhuotL+pox4bnOZnUMy0iGooBhwNA3oGYYhgbMl8AMizQ==
X-Received: by 2002:a17:907:75e3:b0:77a:2378:91ba with SMTP id
 jz3-20020a17090775e300b0077a237891bamr15623579ejc.738.1663664726112; 
 Tue, 20 Sep 2022 02:05:26 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 s1-20020a170906454100b00780f24b797dsm514800ejq.108.2022.09.20.02.05.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 02:05:25 -0700 (PDT)
Message-ID: <f26fa81a-dc13-6a27-2e63-74b13359756e@blackwall.org>
Date: Tue, 20 Sep 2022 12:05:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: nicolas.dichtel@6wind.com, netdev@vger.kernel.org
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-5-razor@blackwall.org>
 <0198618f-7b52-3023-5e9f-b38c49af1677@6wind.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <0198618f-7b52-3023-5e9f-b38c49af1677@6wind.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 04/12] net: netlink: add NLM_F_BULK
 delete request modifier
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

On 20/09/2022 10:49, Nicolas Dichtel wrote:
> 
> Le 13/04/2022 à 12:51, Nikolay Aleksandrov a écrit :
>> Add a new delete request modifier called NLM_F_BULK which, when
>> supported, would cause the request to delete multiple objects. The flag
>> is a convenient way to signal that a multiple delete operation is
>> requested which can be gradually added to different delete requests. In
>> order to make sure older kernels will error out if the operation is not
>> supported instead of doing something unintended we have to break a
>> required condition when implementing support for this flag, f.e. for
>> neighbors we will omit the mandatory mac address attribute.
>> Initially it will be used to add flush with filtering support for bridge
>> fdbs, but it also opens the door to add similar support to others.
>>
>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>> ---
>>  include/uapi/linux/netlink.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
>> index 4c0cde075c27..855dffb4c1c3 100644
>> --- a/include/uapi/linux/netlink.h
>> +++ b/include/uapi/linux/netlink.h
>> @@ -72,6 +72,7 @@ struct nlmsghdr {
>>  
>>  /* Modifiers to DELETE request */
>>  #define NLM_F_NONREC	0x100	/* Do not delete recursively	*/
>> +#define NLM_F_BULK	0x200	/* Delete multiple objects	*/
> Sorry to reply to an old patch, but FWIW, this patch broke the uAPI.
> One of our applications was using NLM_F_EXCL with RTM_DELTFILTER. This is
> conceptually wrong but it was working. After this patch, the kernel returns an
> error (EOPNOTSUPP).
> 
> Here is the patch series:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?h=92716869375b
> 
> We probably can't do anything now, but to avoid this in the future, I see only
> two options:
>  - enforce flags validation depending on the operation (but this may break some
>    existing apps)
>  - stop adding new flags that overlap between NEW and DEL operations (by adding
>    a comment or defining dummy flags).
> 
> Any thoughts?
> 

Personally I'd prefer to enforce validation so we don't lose the flags because of buggy user-space
applications, but we can break someone (who arguably should fix their app though). We already had
that discussion while the set was under review[1] and just to be a bit more confident I also
tried searching for open-source buggy users, but didn't find any.

> Regards,
> Nicolas

[1] https://lore.kernel.org/netdev/97774474-65a3-fa45-e0b9-8db6c748da28@kernel.org/t/#m23018ce831dae16d42cb9c393c7c6bad1bc621c3
