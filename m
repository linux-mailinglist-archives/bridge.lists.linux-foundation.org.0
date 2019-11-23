Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB346107F91
	for <lists.bridge@lfdr.de>; Sat, 23 Nov 2019 18:06:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFBAE87631;
	Sat, 23 Nov 2019 17:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kaVeIzTpCkkB; Sat, 23 Nov 2019 17:06:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47C9E87646;
	Sat, 23 Nov 2019 17:06:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12FF8C1DD8;
	Sat, 23 Nov 2019 17:06:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BEE1C087F
 for <bridge@lists.linux-foundation.org>; Sat, 23 Nov 2019 17:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51B8E8693F
 for <bridge@lists.linux-foundation.org>; Sat, 23 Nov 2019 17:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AfiWU3MCOria for <bridge@lists.linux-foundation.org>;
 Sat, 23 Nov 2019 17:06:25 +0000 (UTC)
X-Greylist: delayed 00:07:57 by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9152586559
 for <bridge@lists.linux-foundation.org>; Sat, 23 Nov 2019 17:06:24 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id m30so5999779lfp.8
 for <bridge@lists.linux-foundation.org>; Sat, 23 Nov 2019 09:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YSheOqV8iD7jxySZ325Tj32xDvn2ymFuhmX2zrp3R38=;
 b=FNJUXy7YAwPw0tggQAcI0TVyRXBrWT/zRay/BS7Etjjbpa8ERh5oOzY9NQeIXt0DSA
 04z89UjIDido70Z5dYtdJNt1AlzH9ethfXEmOUKnlt36yXHhtjIZMItGYRkAw+UgWEfL
 pUfYc4XkIKe3/mlFrfhZEHmnW08RpsdThb0ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YSheOqV8iD7jxySZ325Tj32xDvn2ymFuhmX2zrp3R38=;
 b=Ed/lO2DvTsWH3XUVNvZR/rQCRGOgm3kXYXvBezVmjQjXmJGTpP6UCZlEbfZMkIOaY9
 bQfjyy+AlZDJwTgKLqHJvMYFyt9HOGDLF6RDTNP2oVCqV6zdcdga9EI4XJc6PqjDfycz
 XIBT/eR/JJEGbnhmt9/z0iY7jOkplVhMSDLTH8ooD8rkpUWMP2opAPjCpAxbe5GFK2HW
 KEh6LtbOGH5hn2eRDuJ4G2juKbe0gR71XItECO7sibhYlEeSNzLus+Zo69ytdTfjzBVs
 laARgmhwz6zj23rbEVcIIICiDeB/d4dm4jeTieFK2bi+IOqg0uOrkgrdcTpdDmsZ/OwC
 VDVA==
X-Gm-Message-State: APjAAAU5KAcXgW+WuYPOKtDGDmb0mso9Ii5d4LFzxnxxjiuZY9zgg9/A
 yxqZ6dLEF1LI4HdNrpnim/UZ4w==
X-Google-Smtp-Source: APXvYqyN8oC6LMzVvtUeTHzNX4pEywNNQHPjBd59813r4CJj+fdz6Q53+LzfvhOA+8PbMPRqou3KVg==
X-Received: by 2002:a19:6e06:: with SMTP id j6mr15701392lfc.6.1574528305666;
 Sat, 23 Nov 2019 08:58:25 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x12sm925522lfq.52.2019.11.23.08.58.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Nov 2019 08:58:24 -0800 (PST)
To: Stephen Hemminger <stephen@networkplumber.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
References: <20191122230742.1515752-1-vivien.didelot@gmail.com>
 <20191122152137.33f9f9d7@hermes.lan>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <dbedcfa0-4ece-2690-d93f-7601b0755b95@cumulusnetworks.com>
Date: Sat, 23 Nov 2019 18:58:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191122152137.33f9f9d7@hermes.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: f.fainelli@gmail.com, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP stat counters
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

On 23/11/2019 01:21, Stephen Hemminger wrote:
> On Fri, 22 Nov 2019 18:07:42 -0500
> Vivien Didelot <vivien.didelot@gmail.com> wrote:
> 
>> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
>> transition_fwd stat counters to the bridge ports, along with sysfs
>> statistics nodes under a "statistics" directory of the "brport" entry,
>> providing useful information for STP, for example:
>>
>>     # cat /sys/class/net/lan0/brport/statistics/tx_bpdu
>>     26
>>     # cat /sys/class/net/lan5/brport/statistics/transition_fwd
>>     3
>>
>> At the same time, make BRPORT_ATTR define a non-const attribute as
>> this is required by the attribute group structure.
>>
>> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> 
> Please don't add more sysfs stuff. put it in netlink.
> 

+1

You should be able to use the bridge xstats netlink infra to expose these. We already
support master and slave stats (e.g. vlan and mcast stats are retrieved through it).

>> ---
>>  net/bridge/br_private.h  |  8 ++++++++
>>  net/bridge/br_stp.c      |  8 ++++++++
>>  net/bridge/br_stp_bpdu.c |  4 ++++
>>  net/bridge/br_sysfs_if.c | 35 ++++++++++++++++++++++++++++++++++-
>>  4 files changed, 54 insertions(+), 1 deletion(-)
>>
>> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
>> index 36b0367ca1e0..360d8030e3b2 100644
>> --- a/net/bridge/br_private.h
>> +++ b/net/bridge/br_private.h
>> @@ -283,6 +283,14 @@ struct net_bridge_port {
>>  #endif
>>  	u16				group_fwd_mask;
>>  	u16				backup_redirected_cnt;
>> +
>> +	/* Statistics */
>> +	atomic_long_t			rx_bpdu;
>> +	atomic_long_t			tx_bpdu;
>> +	atomic_long_t			rx_tcn;
>> +	atomic_long_t			tx_tcn;
>> +	atomic_long_t			transition_blk;
>> +	atomic_long_t			transition_fwd;
>>  };
>>  
> 
> There is no these need to be atomic.
> Atomic is expensive.
> 
