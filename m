Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 43391EB7F4
	for <lists.bridge@lfdr.de>; Thu, 31 Oct 2019 20:28:17 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7EB63E5B;
	Thu, 31 Oct 2019 19:28:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 51E5EE40
	for <bridge@lists.linux-foundation.org>;
	Thu, 31 Oct 2019 19:28:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D4DD89E
	for <bridge@lists.linux-foundation.org>;
	Thu, 31 Oct 2019 19:28:05 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id t5so7911914ljk.0
	for <bridge@lists.linux-foundation.org>;
	Thu, 31 Oct 2019 12:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=TnCbq2000sgK9KKfW0a0I1LlWJLVNeCp1tHN1Di2rZ0=;
	b=K4WeBKfV4LVJUx9dWAsJXRPNV5GU2cS/3jB7ikEIQNTer3zdMFt55qG5Dv3SG0otQ2
	XgYvoxht5SxklhFM/+jjbxfv/50HS2Oa/WQ2lBh/qeNEIvyWWQnT3obeCZUsEaSTCLwp
	8BvACCPR4tHb1dtnWdgF7RweVv2ZNg7HD4Jl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=TnCbq2000sgK9KKfW0a0I1LlWJLVNeCp1tHN1Di2rZ0=;
	b=bGmyY8M9e4ji7m3rx+A1poJNdZFYww8GiNGYC0sBNEHxFpBI+zqpRvQjFDkpqe1cq1
	L7fqVkBShbgQn3+X2IbFrcCLDjVLVEuh1y/8xyFDQP1zhFBqzw2fVZ3RFL5lDQwz6k+m
	kskCc0pu+DV9n2r1LE2p4pL7w9fr23WxXWI4IGS18UEeT5m5ZUBhQztD4N8e7VcrJy8N
	USbEZ59lTicQ7NFCxXdqzRVzrqJ2pCDNWJuidyguQM/2EQz+lpoD/6U7UqCTsR5m18Zm
	vyhXlKHNWN6RKtyUsNRQp24O0a6T0k4ON+ZNhv8YRa0cCM9NYtqxjf+dMdZ1ufzpJ7fH
	qM/g==
X-Gm-Message-State: APjAAAU+1LYEac3f05IfKgaOJmhcauOOK8QU6uH5Nqx9E9XON2xdIz3n
	cIPlxMOxYPnEnugoz/rJP+ggdECAbfA=
X-Google-Smtp-Source: APXvYqyUQ5kzEbBRvsqE0Zym867THLLJuL57Z2vzRG+u5rwex/Ypu4aDDFy0rYIsQ+5wxV2eJatiFw==
X-Received: by 2002:a2e:b5a2:: with SMTP id f2mr5300902ljn.108.1572550083554; 
	Thu, 31 Oct 2019 12:28:03 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id d27sm2432810lfb.3.2019.10.31.12.28.02
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 31 Oct 2019 12:28:02 -0700 (PDT)
To: Joe Perches <joe@perches.com>, netdev@vger.kernel.org
References: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
	<8e21b79c1adf5c3c4fb94c11fbe30371c4e96943.camel@perches.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <14ab24ad-e730-989a-db61-9cd377104a7a@cumulusnetworks.com>
Date: Thu, 31 Oct 2019 21:28:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <8e21b79c1adf5c3c4fb94c11fbe30371c4e96943.camel@perches.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/7] net: bridge: convert fdbs to use
	bitops
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 31/10/2019 20:37, Joe Perches wrote:
> On Tue, 2019-10-29 at 13:45 +0200, Nikolay Aleksandrov wrote:
>> Hi,
>> We'd like to have a well-defined behaviour when changing fdb flags. The
>> problem is that we've added new fields which are changed from all
>> contexts without any locking. We are aware of the bit test/change races
>> and these are fine (we can remove them later), but it is considered
>> undefined behaviour to change bitfields from multiple threads and also
>> on some architectures that can result in unexpected results,
>> specifically when all fields between the changed ones are also
>> bitfields. The conversion to bitops shows the intent clearly and
>> makes them use functions with well-defined behaviour in such cases.
>> There is no overhead for the fast-path, the bit changing functions are
>> used only in special cases when learning and in the slow path.
>> In addition this conversion allows us to simplify fdb flag handling and
>> avoid bugs for future bits (e.g. a forgetting to clear the new bit when
>> allocating a new fdb). All bridge selftests passed, also tried all of the
>> converted bits manually in a VM.
>>
>> Thanks,
>>  Nik
>>
>> Nikolay Aleksandrov (7):
>>   net: bridge: fdb: convert is_local to bitops
>>   net: bridge: fdb: convert is_static to bitops
>>   net: bridge: fdb: convert is_sticky to bitops
>>   net: bridge: fdb: convert added_by_user to bitops
>>   net: bridge: fdb: convert added_by_external_learn to use bitops
>>   net: bridge: fdb: convert offloaded to use bitops
>>   net: bridge: fdb: set flags directly in fdb_create
> 
> Wouldn't it be simpler to change all these bitfields to bool?
> 
> The next member is ____cachline_aligned_in_smp so it's not
> like the struct size matters or likely even changes.
> 

I guess it's just preference now, I'd prefer having 1 field which is well
packed and can contain more bits (and more are to come) instead of bunch
of bool or u8 fields which is a waste of space. We can set them together, it's more
compact and also the atomic bitops make it clear that these can change
without any locking. We're about to add new bits to these and it's nice
to have a clear understanding and well-defined API for them. Specifically
the test_and_set/clear_bit() can simplify code considerably.

> ---
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index ce2ab1..46d2f10 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -183,12 +183,12 @@ struct net_bridge_fdb_entry {
>  
>  	struct net_bridge_fdb_key	key;
>  	struct hlist_node		fdb_node;
> -	unsigned char			is_local:1,
> -					is_static:1,
> -					is_sticky:1,
> -					added_by_user:1,
> -					added_by_external_learn:1,
> -					offloaded:1;
> +	bool				is_local;
> +	bool				is_static;
> +	bool				is_sticky;
> +	bool				added_by_user;
> +	bool				added_by_external_learn;
> +	bool				offloaded;
>  
>  	/* write-heavy members should not affect lookups */
>  	unsigned long			updated ____cacheline_aligned_in_smp;
> 
> 

