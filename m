Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721FB119277
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 21:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BC8A8842A;
	Tue, 10 Dec 2019 20:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LB0hNuEaW5yV; Tue, 10 Dec 2019 20:53:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 886AB884B5;
	Tue, 10 Dec 2019 20:53:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FF1EC1796;
	Tue, 10 Dec 2019 20:53:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E43BBC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2A6286A48
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRaaqrDM2d-Q for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 20:53:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B772B8647A
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:53:03 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 15so14892792lfr.2
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 12:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fmEDmfNgnyzrZ9VU2XdpzBoL/tPjn0qLVvtc+e2r5Oc=;
 b=e/m83JTC4nzbv0VlJKT759lat2DxFAV1JO9gV9wxjF0R5Yzaj5KEgMvHgSe7iDlWtl
 9NYuG/xynOebC8eY6gGKmUGR/l7TG6X6zk0rl1lB5GWhSPS/WA7gp+KvLifJuRLlXllq
 LRzSl+cE0UrQUNwU+f/m7IMF3aYK6jefaQZr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fmEDmfNgnyzrZ9VU2XdpzBoL/tPjn0qLVvtc+e2r5Oc=;
 b=aVzsRZru8Co9wSUKZmIE/a8+mznixsg2pg9cAHYDfGU1hS/V3GKx1j+y4N93g6PuuG
 nY/lOhNjT99BFpnR296yyP4GJViibsypY895X6h1IBgMKd8OxfDBfJtguxxNdK+fAubQ
 xfiqhVXQo+20FsclfWSuChs93RmtMSvmzCqDCtnVskwuWNdR0oCBUdi5lo6Kj8dpIsPz
 zZcfefA8ihNQSaUw9in4RJRpbWeGOfNbXSwOszqmtyYYNdBGx+ckI9ms3AyjmbTx4ogf
 BI7QaZny4bgs+b7h4RTD2vUbuPgGF4cByKV532aXkDlZ5bTKdWmH/7MQbXLlrXUg5gak
 TT5Q==
X-Gm-Message-State: APjAAAXuBK3Tv1O3D4EQ/QdE8AquLkX/+7LFScgMlYHybTSuRkH+U1EW
 p0P+l8eAi6kwG7FRspEPgPuz4w==
X-Google-Smtp-Source: APXvYqztVGhd39FvfMSc3HRG4lNOgzYmTNPv5ZkG2/05mrVJPhxKKzf0q98tjbnD0vmM8sQuuLFIWg==
X-Received: by 2002:a19:6d13:: with SMTP id i19mr20713750lfc.6.1576011181363; 
 Tue, 10 Dec 2019 12:53:01 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b63sm1829309lfg.79.2019.12.10.12.53.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 12:53:00 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
 <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
 <20191210151047.GB1423505@t480s.localdomain>
 <1aa8b6e4-6a73-60b0-c5fb-c0dfa05e27e6@cumulusnetworks.com>
 <20191210153441.GB1429230@t480s.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <40090370-4d81-0ea9-e81a-da59534161b7@cumulusnetworks.com>
Date: Tue, 10 Dec 2019 22:52:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191210153441.GB1429230@t480s.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

On 10/12/2019 22:34, Vivien Didelot wrote:
> On Tue, 10 Dec 2019 22:15:26 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
>>>>>> Why do you need percpu ? All of these seem to be incremented with the
>>>>>> bridge lock held. A few more comments below.
>>>>>
>>>>> All other xstats are incremented percpu, I simply followed the pattern.
>>>>>
>>>>
>>>> We have already a lock, we can use it and avoid the whole per-cpu memory handling.
>>>> It seems to be acquired in all cases where these counters need to be changed.
>>>
>>> Since the other xstats counters are currently implemented this way, I prefer
>>> to keep the code as is, until we eventually change them all if percpu is in
>>> fact not needed anymore.
>>>
>>> The new series is ready and I can submit it now if there's no objection.
>>
>> There is a reason other counters use per-cpu - they're incremented without any locking from fast-path.
>> The bridge STP code already has a lock which is acquired in all of these paths and we don't need
>> this overhead and the per-cpu memory allocations. Unless you can find a STP codepath which actually
>> needs per-cpu, I'd prefer you drop it.
> 
> Ho ok I understand what you mean now. I'll drop the percpu attribute.
> 
> 
> Thanks,
> 
> 	Vivien
> 

Great, thanks again.
I think it's clear, but I'll add just in case to avoid extra work - you can drop
the dynamic memory allocation altogether and make the struct part of net_bridge_port.

Cheers,
 Nik

