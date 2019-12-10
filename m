Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7F119104
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 20:50:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A82108793D;
	Tue, 10 Dec 2019 19:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cjeh3BfQMxlJ; Tue, 10 Dec 2019 19:50:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 160ED8793F;
	Tue, 10 Dec 2019 19:50:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE695C1797;
	Tue, 10 Dec 2019 19:50:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 047AEC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:50:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E2CBD86BB0
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIH36F375e5c for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 19:50:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1307386BAE
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 19:50:15 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id n25so14779949lfl.0
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 11:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mh1MDhoccZ8LcGj7No6Pp5Z8k1gtAci1d0+A5gGxl1E=;
 b=eXFdChDloDkEyFWlQ+kb/rD3xmn4wMBfccyqSQplXrWA9vQHvu59MGI5/jck3JYQms
 hlnBt7+yDu3vS2w3tH9wqyAEvXEUG9uDyW0lwjzbmdynzznqx5UaflGPOhWygHzAApMI
 7QnlL2qtXQNxiVoy2xtO6Rma2PeITxY3tGsdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mh1MDhoccZ8LcGj7No6Pp5Z8k1gtAci1d0+A5gGxl1E=;
 b=aIKu4L2L/Zpu4sQmaa1WMLykjWroszI2JG/yALs341thyDGbvn4mVkusFInfb+2VdE
 355pOIDAV9NVKVE9b5zam68yeT3mItnGlYpJWcrirdI7pR1f6rT+l+w6NClWf40D8VbK
 ghbqWc7+R16DfZpv2lx+HFiyGLHmQ8Qh7t8gF5iPs+zN42xCxSQ/oNXW97klpHLtJp8Q
 Ua8B+9cyL6ngoZJ+y4HGcJyBtUdcclVlflYNucFacdbCTePVMZkySXYLUwX1zHo713k6
 Vh6dHIJIXgbBr3DlpwCZz0o5EJDt+DEkdqzVeJCHCQuK0Oz09RlsHT/PlYyTiyuAaNAa
 wyMw==
X-Gm-Message-State: APjAAAXHGoyeDN1VCGAHn3KmgiYlZahH6WDSVi5IjMlv+yH+uNe1qi36
 cUm6DMGbWqelVURXpmgPmDy8eg==
X-Google-Smtp-Source: APXvYqyl+VfdSDo5UzwybpIatTMhunT7staLyyawXzmvuMq1T/sqIAa8/kbxGXWyzXN5Gxgu7+l9rQ==
X-Received: by 2002:a19:f00d:: with SMTP id p13mr20761511lfc.37.1576007412928; 
 Tue, 10 Dec 2019 11:50:12 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id w17sm2129532lfn.22.2019.12.10.11.50.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 11:50:12 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
Date: Tue, 10 Dec 2019 21:50:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191210143931.GF1344570@t480s.localdomain>
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

On 10/12/2019 21:39, Vivien Didelot wrote:
> Hi Nikolay,
> 
> On Tue, 10 Dec 2019 09:49:59 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> 
>> Why did you send the bridge patch again ? Does it have any changes ?
> 
> The second iproute2 patch does not include the include guards update, but
> I kept the bridge_stp_stats structure and the BRIDGE_XSTATS_STP definition
> otherwise iproute2 wouldn't compile.
> >>
>> Why do you need percpu ? All of these seem to be incremented with the
>> bridge lock held. A few more comments below.
> 
> All other xstats are incremented percpu, I simply followed the pattern.
> 

We have already a lock, we can use it and avoid the whole per-cpu memory handling.
It seems to be acquired in all cases where these counters need to be changed.

>>>  	struct net_bridge_port *p
>>>  		= container_of(kobj, struct net_bridge_port, kobj);
>>> +	free_percpu(p->stp_stats);
>>
>> Please leave a new line between local var declaration and the code. I know
>> it was missing, but you can add it now. :)
> 
> OK.
> 
>>> +	if (p) {
>>> +		struct bridge_stp_xstats xstats;
>>
>> Please rename the local var here, using just xstats is misleading.
>> Maybe stp_xstats ?
> 
> This isn't misleading to me since its scope is limited to the current block
> and not the entire function. The block above dumping the VLAN xstats is
> using a local "struct br_vlan_stats stats" variable for example.
> 

Yep, as I answered to myself earlier, with the below change this goes away.

>>
>>> +
>>> +		br_stp_get_xstats(p, &xstats);
>>> +
>>> +		if (nla_put(skb, BRIDGE_XSTATS_STP, sizeof(xstats), &xstats))
>>> +			goto nla_put_failure;
>>
>> Could you please follow how mcast xstats are dumped and do something similar ?
>> It'd be nice to have similar code to audit.
> 
> Sure. I would also love to have easily auditable code in net/bridge. For
> the bridge STP xstats I followed the VLAN xstats code above, which does:
> 
>     if (nla_put(skb, BRIDGE_XSTATS_VLAN, sizeof(vxi), &vxi))
>         goto nla_put_failure;
> 

Yeah, we can move that to a vlan-specific helper too, but that is an unrelated change.

> But I can change the STP xstats code to the following:
> 
>     if (p) {
>         nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
>                                 sizeof(struct bridge_stp_xstats),
>                                 BRIDGE_XSTATS_PAD);
>         if (!nla)
>             goto nla_put_failure;
> 
>         br_stp_get_xstats(p, nla_data(nla));
>     }
> 
> Would that be preferred?
> 
> 

Perfect, thanks!

> Thanks,
> 
> 	Vivien
> 

