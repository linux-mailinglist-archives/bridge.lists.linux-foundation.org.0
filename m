Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FD14FF69A
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 14:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ED7C60D60;
	Wed, 13 Apr 2022 12:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyFm0p3r_P3I; Wed, 13 Apr 2022 12:21:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 15AD860D70;
	Wed, 13 Apr 2022 12:21:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8DA5C0088;
	Wed, 13 Apr 2022 12:21:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 06457C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7D6482C35
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i520Dx75Nemc for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 12:21:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F274182B97
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:21:16 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id u18so2153287eda.3
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 05:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=AkGklnty57yCILmUblbJRB8X6WGVVTnSwjTLFB+Ahyg=;
 b=zEjDLJeNwDYO20naLR11cjx1Ddm5ja6P93pjnR9KqLYy6aYXUjVBkGik/xCW6jxQ2S
 pZLxk6SE2PsQ4LpxUPJYvq++DWdvrCSfjCqp2PJMt9TklorXz5yHar0poqG34egddajr
 yytuTvCh1H1AiwPiCCI8/TSp2CaWA9mDjcjWs9Yi0sYZbwQQqgPuFiblKIe+7GowiONv
 HdrPc/KlJ9xX7nefFkCgSIsTjQPigqgvtlFCIve7Gnfj1p84aJSEiJ/fQdAL/xAdwsNf
 RjIp7syMVwSTmqlT/B5kGjPtc1+1oiBvPYdNkNVQTle0JGvxH5cdQSwXSQ5dUzj1T9zF
 DfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=AkGklnty57yCILmUblbJRB8X6WGVVTnSwjTLFB+Ahyg=;
 b=aG3Na9KS2zgogpz/c0jzARyK18ymhPld8KqrA72Wu7AnhWT8taWYpUMT1WWek1WNsJ
 T1jlo6H2/QkJr34Gqg/7//4IY19L8zei+1g3X5SP6KGUsKF+mFlGZK8WigXbgYBb6eQz
 iEWf6sm3xHmHTXhXlik+6gDwSRvznMqz4isTjhs3ab372qBlV41Nss9mcUDeF/ELGXds
 A/7e0Whj6ERxw/zinyH2uALax5OQfrW9fJgJEbtV2nfGUI+j+PQIRJg886WaiT27qgd/
 1m3Xxgvk1+SIZLkuf+nVcBflJhJ6j2ku9aRtEre7KTaoy9SxRwxT4071VLjly5qtmydP
 yGQA==
X-Gm-Message-State: AOAM531kFgj6xToRb+QmWfy0UleXZqsUlUwj0Qs5em+5mg7kP3zEe5fA
 YZhjCO8/2zVA8xJsXN9wpx75/g==
X-Google-Smtp-Source: ABdhPJxxc4eT5SAGj/mlGvnOM6KVnBOBe11XEP9aAdc5R4HouwJCU63i5p3FksYBdg7MDl3DT+IXZQ==
X-Received: by 2002:a50:cd8d:0:b0:416:63d7:9326 with SMTP id
 p13-20020a50cd8d000000b0041663d79326mr43073833edi.233.1649852475004; 
 Wed, 13 Apr 2022 05:21:15 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z23-20020a170906435700b006b0e62bee84sm14155560ejm.115.2022.04.13.05.21.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 05:21:14 -0700 (PDT)
Message-ID: <e43b5033-d350-fc81-71be-de3e1053c72a@blackwall.org>
Date: Wed, 13 Apr 2022 15:21:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-6-razor@blackwall.org> <Yla8wj7khYxpwxan@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <Yla8wj7khYxpwxan@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 05/12] net: rtnetlink: add bulk
 delete support flag
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

On 13/04/2022 15:06, Ido Schimmel wrote:
> On Wed, Apr 13, 2022 at 01:51:55PM +0300, Nikolay Aleksandrov wrote:
>> Add a new rtnl flag (RTNL_FLAG_BULK_DEL_SUPPORTED) which is used to
>> verify that the delete operation allows bulk object deletion. Also emit
>> a warning if anyone tries to set it for non-delete kind.
>>
>> Suggested-by: David Ahern <dsahern@kernel.org>
>> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
>> ---
>> v4: new patch
>>
>>  include/net/rtnetlink.h | 3 ++-
>>  net/core/rtnetlink.c    | 8 ++++++++
>>  2 files changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
>> index 0bf622409aaa..bf8bb3357825 100644
>> --- a/include/net/rtnetlink.h
>> +++ b/include/net/rtnetlink.h
>> @@ -10,7 +10,8 @@ typedef int (*rtnl_doit_func)(struct sk_buff *, struct nlmsghdr *,
>>  typedef int (*rtnl_dumpit_func)(struct sk_buff *, struct netlink_callback *);
>>  
>>  enum rtnl_link_flags {
>> -	RTNL_FLAG_DOIT_UNLOCKED = BIT(0),
>> +	RTNL_FLAG_DOIT_UNLOCKED		= BIT(0),
>> +	RTNL_FLAG_BULK_DEL_SUPPORTED	= BIT(1),
>>  };
>>  
>>  enum rtnl_kinds {
>> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
>> index beda4a7da062..63c7df52a667 100644
>> --- a/net/core/rtnetlink.c
>> +++ b/net/core/rtnetlink.c
>> @@ -249,6 +249,8 @@ static int rtnl_register_internal(struct module *owner,
>>  	if (dumpit)
>>  		link->dumpit = dumpit;
>>  
>> +	WARN_ON(rtnl_msgtype_kind(msgtype) != RTNL_KIND_DEL &&
>> +		(flags & RTNL_FLAG_BULK_DEL_SUPPORTED));
>>  	link->flags |= flags;
>>  
>>  	/* publish protocol:msgtype */
>> @@ -6009,6 +6011,12 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
>>  	}
>>  
>>  	flags = link->flags;
>> +	if (kind == RTNL_KIND_DEL && (nlh->nlmsg_flags & NLM_F_BULK) &&
>> +	    !(flags & RTNL_FLAG_BULK_DEL_SUPPORTED)) {
>> +		NL_SET_ERR_MSG(extack, "Bulk delete is not supported");
>> +		goto err_unlock;
> 
> If a buggy user space application is sending messages with NLM_F_BULK
> set (unintentionally), will it break on newer kernel? I couldn't find
> where the kernel was validating that reserved flags are not used (I
> suspect it doesn't).

Correct, it doesn't.

> 
> Assuming the above is correct and of interest, maybe just emit a warning
> via extack and drop the goto? Alternatively, we can see if anyone
> complains which might never happen
> 

TBH I prefer to error out on an unsupported flag, but I get the problem. These
weren't validated before and we start checking now. The problem is that we'll
return an extack without an error, but the delete might also remove something.
Hrm.. perhaps we can rephrase the error in that case (since it becomes a warning
in iproute2 terms):
 "NLM_F_BULK flag is set but bulk delete operation is not supported"
So it will warn the user it has an unsupported flag.

WDYT ?

IMO we should bite the bullet and keep the error though. :)

>> +	}
>> +
>>  	if (flags & RTNL_FLAG_DOIT_UNLOCKED) {
>>  		doit = link->doit;
>>  		rcu_read_unlock();
>> -- 
>> 2.35.1
>>

