Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B631118190
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 08:54:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA9187E14;
	Tue, 10 Dec 2019 07:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dc0qDACOYtzB; Tue, 10 Dec 2019 07:54:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E162B87E17;
	Tue, 10 Dec 2019 07:54:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B4105C1796;
	Tue, 10 Dec 2019 07:54:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 25701C0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 11A5E87C66
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y+XexlcnGFiE for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 07:54:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 27D0F877E4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:54:10 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id e28so18702637ljo.9
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 23:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Qsqd9AhQRa9hpfqkhwfNfWPl8RmlEkObLmWrw1kINII=;
 b=OqngQHNHaO353lzZWpAk0HRzC3O/em2CcW87cQh0dU3Ey712Iqvge8hFyxEePGfoFt
 Q3eiH4OUMllIF1E3BKJe3dFOHNsdlr//N9sD8L0hyTXV07uTHisY1I6+N4mcN/z1VddG
 mdCJhMzLIjtgu7KKhatbmuddVKXYzULywZT9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qsqd9AhQRa9hpfqkhwfNfWPl8RmlEkObLmWrw1kINII=;
 b=jOiJIxDGsdAolm5ED5bM3UdjftfPXAyzDxtv01sYt7LMKa8xXcobkpVJUCfvYtmJj5
 DtbMFCBI9frvROfcJ26dkIxKKIu33Ciua5rze4K61tCbvG+qV7rgKfxBL0kNkK4pMCOP
 gm7kM0s3h+dvgj2tFTSbt7BL0LaBxIqSuNtpSLH2xaO8mIJRuXRyRb8R9ghuuFEGzd/C
 83WOH5/qFa5bPGqFjDv0vj3IhPxJ1848k9rWlG6y3uj66+dvxbGhkBg9N0vziSsEDtJd
 8f+XqZcBfW0Z/EenB15n3inxXdkQN1Pc9VI8rrE5DGziezPMdsygSxnNUmCQ3sMDhbu8
 8snw==
X-Gm-Message-State: APjAAAVlidGCweF8F+0dCG8HnZjGw8c/s2y4P1smtJLJicLQWBy3yfsw
 q2k0A8TzzgcWC2NwVMfFrT1WQA==
X-Google-Smtp-Source: APXvYqy+1yM3G+PzAz8mRHJoQdCUhG5ZBR6GwFkbSmY4gopq6f6zIqppjCzN6G5H72+63evS7EsbtA==
X-Received: by 2002:a2e:8606:: with SMTP id a6mr19426093lji.119.1575964447970; 
 Mon, 09 Dec 2019 23:54:07 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t9sm1004685lfl.51.2019.12.09.23.54.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 23:54:07 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Vivien Didelot <vivien.didelot@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
Message-ID: <1a32ac69-a802-e039-215a-feec740e682c@cumulusnetworks.com>
Date: Tue, 10 Dec 2019 09:54:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org
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

On 10/12/2019 09:49, Nikolay Aleksandrov wrote:
> On 10/12/2019 01:05, Vivien Didelot wrote:
>> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
>> transition_fwd xstats counters to the bridge ports copied over via
>> netlink, providing useful information for STP.
>>
>> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
>> ---
>>  include/uapi/linux/if_bridge.h | 10 ++++++++++
>>  net/bridge/br_if.c             |  8 ++++++++
>>  net/bridge/br_netlink.c        |  9 +++++++++
>>  net/bridge/br_private.h        |  9 +++++++++
>>  net/bridge/br_stp.c            | 25 +++++++++++++++++++++++++
>>  net/bridge/br_stp_bpdu.c       | 12 ++++++++++++
>>  net/bridge/br_stp_if.c         | 27 +++++++++++++++++++++++++++
>>  7 files changed, 100 insertions(+)
>>
[snip]
>>  }
>>  
>> @@ -419,6 +420,12 @@ static struct net_bridge_port *new_nbp(struct net_bridge *br,
>>  	if (p == NULL)
>>  		return ERR_PTR(-ENOMEM);
>>  
>> +	p->stp_stats = netdev_alloc_pcpu_stats(struct br_stp_stats);
>> +	if (!p->stp_stats) {
>> +		kfree(p);
>> +		return ERR_PTR(-ENOMEM);
>> +	}
>> +
>>  	p->br = br;
>>  	dev_hold(dev);
>>  	p->dev = dev;
>> @@ -432,6 +439,7 @@ static struct net_bridge_port *new_nbp(struct net_bridge *br,
>>  	err = br_multicast_add_port(p);
>>  	if (err) {
>>  		dev_put(dev);
>> +		free_percpu(p->stp_stats);
>>  		kfree(p);
>>  		p = ERR_PTR(err);
>>  	}
>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>> index a0a54482aabc..03aced1f862b 100644
>> --- a/net/bridge/br_netlink.c
>> +++ b/net/bridge/br_netlink.c
>> @@ -1597,6 +1597,15 @@ static int br_fill_linkxstats(struct sk_buff *skb,
>>  		}
>>  	}
>>  
>> +	if (p) {
>> +		struct bridge_stp_xstats xstats;
> 
> Please rename the local var here, using just xstats is misleading.
> Maybe stp_xstats ?
> 

Actually if this gets re-written to follow the mcast dump the local var
would disappear altogether.


