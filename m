Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD28338A17
	for <lists.bridge@lfdr.de>; Fri, 12 Mar 2021 11:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E74234ED52;
	Fri, 12 Mar 2021 10:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7CXxh1rQ40e; Fri, 12 Mar 2021 10:29:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D6D04ED56;
	Fri, 12 Mar 2021 10:29:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56272C0001;
	Fri, 12 Mar 2021 10:29:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1BF58C0001
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 13:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0246D4018E
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 13:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMmmtpYL5Exs for <bridge@lists.linux-foundation.org>;
 Tue,  9 Mar 2021 13:31:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 720564018C
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 13:31:54 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 x7-20020a17090a2b07b02900c0ea793940so5010968pjc.2
 for <bridge@lists.linux-foundation.org>; Tue, 09 Mar 2021 05:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=hzSCIKRAepKDBSqSG3kIFxZmTW4GplrRyROpRrL9fZk=;
 b=VoUC+t+4QQEB+uwm9H46DQTFa9Lxcv65xlBoQILewDayS5eF40i8muFvUZwnMdTwEp
 vndo1PrFpuvtxtttpGyVTXNI7XzW/5br+dEfWiRiPld2yrEHih/GMnxBJmXplP9KNYzu
 0xC0a8SyJu3hpz3MXIFpaAlQgV8QL64PiJYqt9v1CHJTlgW8hgB6KbQ0qOxmv6RFGk2t
 fBxGvLENa4EPpuyVJ+kkUeXFo5rLymW/ZOcZrLKoi8m7DpQus3oAbCYnkEv7CDKeM3d2
 ihIqn6jFUMPv74suxw+3gSNUecSlJs5f6okTzGOy8RLA/2OHV2XB5rXSTkIjfuUMw5vy
 +llw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hzSCIKRAepKDBSqSG3kIFxZmTW4GplrRyROpRrL9fZk=;
 b=jJwx2doczaSsPjcOVIXihMSdzZ5tiv+rSfA8IoodYB45xpqz6lRMr2ExHfiyGat58q
 mNI4BYS9QoDHuP67BPcKoCJXeu9ieaE1QAV+Jh3cbc38XdUbCuupyKJChFlNLOS5Hkuz
 baeiSKdnuWCqSVSCzKmDHg9NMQe1yxlKEJ/fgrp+QrjejKq35mkMNNHBaglwEY50Hra/
 KYrC+u7ciRRPKbF+JLX5jyZeQIUFX/51Mw4JLZhQL0V16+P3A5Xg5xL1XL5QxsZMmdhu
 WfT6g6BSoom6/jN1Cu0zze6JVQ/chK+rerMTEHH8jbZ5gSbRi5QY5MKqhWCHNTZP8ejH
 RLdA==
X-Gm-Message-State: AOAM532DSL3bKgnExkOmetoxtxReo2y0EbZTX2KoBOhfHdFQQKYzCMVF
 DaGoScLsh4K9XO4Ytx5dANY=
X-Google-Smtp-Source: ABdhPJxXio9p1SubQUEusIhDTwHFOdEwz2dvRviAy6id3mJP4DBEq5QQnW53AW5uv2HMkG4gCfbSsw==
X-Received: by 2002:a17:90a:314:: with SMTP id 20mr4869559pje.72.1615296713955; 
 Tue, 09 Mar 2021 05:31:53 -0800 (PST)
Received: from [166.111.139.108] ([166.111.139.108])
 by smtp.gmail.com with ESMTPSA id d25sm2133784pfo.218.2021.03.09.05.31.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 05:31:53 -0800 (PST)
To: Florian Westphal <fw@strlen.de>
References: <20210309022854.17904-1-baijiaju1990@gmail.com>
 <20210309110121.GD10808@breakpoint.cc>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <e0f4d41e-b600-ce3b-b2e8-ca5c12f151dc@gmail.com>
Date: Tue, 9 Mar 2021 21:31:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20210309110121.GD10808@breakpoint.cc>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Mailman-Approved-At: Fri, 12 Mar 2021 10:29:25 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, kadlec@netfilter.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH] net: bridge: fix error return code of
 do_update_counters()
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



On 2021/3/9 19:01, Florian Westphal wrote:
> Jia-Ju Bai <baijiaju1990@gmail.com> wrote:
>> When find_table_lock() returns NULL to t, no error return code of
>> do_update_counters() is assigned.
> Its -ENOENT.
>
>>   	t = find_table_lock(net, name, &ret, &ebt_mutex);
>                                         ^^^^^
>
> ret is passed to find_table_lock, which passes it to
> find_inlist_lock_noload() which will set *ret = -ENOENT
> for NULL case.

Thanks for the reply!
I did not notice "&ret" in find_table_lock()...
I am sorry for the false positive.


Best wishes,
Jia-Ju Bai
