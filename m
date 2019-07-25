Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD574F1B
	for <lists.bridge@lfdr.de>; Thu, 25 Jul 2019 15:21:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06172E0E;
	Thu, 25 Jul 2019 13:21:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E561C9A
	for <bridge@lists.linux-foundation.org>;
	Thu, 25 Jul 2019 13:21:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B73797FD
	for <bridge@lists.linux-foundation.org>;
	Thu, 25 Jul 2019 13:21:22 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r1so50766086wrl.7
	for <bridge@lists.linux-foundation.org>;
	Thu, 25 Jul 2019 06:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=sHoRY+mXic7NkNfPFucr+22Si1CXT/E0fQIjB3vP5E4=;
	b=Po0NeTTxb+nvdjvmvbUp8u6K6W2wJNfYZoiEEQgVBKy52QdPpqSOmtHg/zMCOS9AS5
	xMbWSEyGg0+PXLtHosfvgCZq7V8YPbCVpoMQBn31WOosHTMSX5vlX2/GWwAt67ta0I6Y
	M0cyXxQMy7L4t7HVFJHileEePEdJtygUT3IGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=sHoRY+mXic7NkNfPFucr+22Si1CXT/E0fQIjB3vP5E4=;
	b=d3UEFxv+xx6U3ZXvbJNgW2VdRyXtFg9ZTFAJthd2v8qx5UD9kKHYu/m/QCLagDR0bk
	dru8akb0NYHR9vCFYYiJ/eNC3BIlEfdcxnCjAbT9JvFtlsZmhmFxTFWq22JUZOMOcX9z
	vrV8jAP4LDYQficvvD4SQtrAUWZhfIpWm8Ek34Gsu1Z8CnU+XiKqAp0UgBQDlq730IPc
	mk5BvNG9xsC7Mjfsa2eA+YCk5q33i6T7KB0tTBGPPM1C1m3KRtLgdNkgGqS/2Z4A//CF
	w58PjmSx09KqZIxDidqwYGWI6bB7f5dkFx8Rtist9etENsAi/mK7ju87fjEI9aqfU86O
	7agw==
X-Gm-Message-State: APjAAAX0uySHtkp3hbnrg+Zon0LMTIEa7DPRmbrqFmdZ/dH1tvro98oS
	GARtsnEueZvxV31mdMEFP/f9/Q==
X-Google-Smtp-Source: APXvYqzzn3dDK9Dsq4Rqf9c8rrDZiWfqE90XublDccXfwKAa0gI9nnKVLo/yjPHVttqGxqc2BBpLyQ==
X-Received: by 2002:adf:ce88:: with SMTP id r8mr21287004wrn.42.1564060881337; 
	Thu, 25 Jul 2019 06:21:21 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	y6sm61292070wmd.16.2019.07.25.06.21.20
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jul 2019 06:21:20 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
	davem@davemloft.net, bridge@lists.linux-foundation.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	allan.nielsen@microchip.com
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
Message-ID: <eef063fe-fd3a-7e02-89c2-e40728a17578@cumulusnetworks.com>
Date: Thu, 25 Jul 2019 16:21:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <7e7a7015-6072-d884-b2ba-0a51177245ab@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
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

On 25/07/2019 16:06, Nikolay Aleksandrov wrote:
> On 25/07/2019 14:44, Horatiu Vultur wrote:
>> There is no way to configure the bridge, to receive only specific link
>> layer multicast addresses. From the description of the command 'bridge
>> fdb append' is supposed to do that, but there was no way to notify the
>> network driver that the bridge joined a group, because LLADDR was added
>> to the unicast netdev_hw_addr_list.
>>
>> Therefore update fdb_add_entry to check if the NLM_F_APPEND flag is set
>> and if the source is NULL, which represent the bridge itself. Then add
>> address to multicast netdev_hw_addr_list for each bridge interfaces.
>> And then the .ndo_set_rx_mode function on the driver is called. To notify
>> the driver that the list of multicast mac addresses changed.
>>
>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
>> ---
>>  net/bridge/br_fdb.c | 49 ++++++++++++++++++++++++++++++++++++++++++++++---
>>  1 file changed, 46 insertions(+), 3 deletions(-)
>>
> 
> Hi,
> I'm sorry but this patch is wrong on many levels, some notes below. In general
> NLM_F_APPEND is only used in vxlan, the bridge does not handle that flag at all.
> FDB is only for *unicast*, nothing is joined and no multicast should be used with fdbs.
> MDB is used for multicast handling, but both of these are used for forwarding.
> The reason the static fdbs are added to the filter is for non-promisc ports, so they can
> receive traffic destined for these FDBs for forwarding.
> If you'd like to join any multicast group please use the standard way, if you'd like to join
> it only on a specific port - join it only on that port (or ports) and the bridge and you'll

And obviously this is for the case where you're not enabling port promisc mode (non-default).
In general you'll only need to join the group on the bridge to receive traffic for it
or add it as an mdb entry to forward it.

> have the effect that you're describing. What do you mean there's no way ?
> 
> In addition you're allowing a mix of mcast functions to be called with unicast addresses
> and vice versa, it is not that big of a deal because the kernel will simply return an error
> but still makes no sense.
> 
> Nacked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> 
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index b1d3248..d93746d 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -175,6 +175,29 @@ static void fdb_add_hw_addr(struct net_bridge *br, const unsigned char *addr)
>>  	}
>>  }
>>  
>> +static void fdb_add_hw_maddr(struct net_bridge *br, const unsigned char *addr)
>> +{
>> +	int err;
>> +	struct net_bridge_port *p;
>> +
>> +	ASSERT_RTNL();
>> +
>> +	list_for_each_entry(p, &br->port_list, list) {
>> +		if (!br_promisc_port(p)) {
>> +			err = dev_mc_add(p->dev, addr);
>> +			if (err)
>> +				goto undo;
>> +		}
>> +	}
>> +
>> +	return;
>> +undo:
>> +	list_for_each_entry_continue_reverse(p, &br->port_list, list) {
>> +		if (!br_promisc_port(p))
>> +			dev_mc_del(p->dev, addr);
>> +	}
>> +}
>> +
>>  /* When a static FDB entry is deleted, the HW address from that entry is
>>   * also removed from the bridge private HW address list and updates all
>>   * the ports with needed information.
>> @@ -192,13 +215,27 @@ static void fdb_del_hw_addr(struct net_bridge *br, const unsigned char *addr)
>>  	}
>>  }
>>  
>> +static void fdb_del_hw_maddr(struct net_bridge *br, const unsigned char *addr)
>> +{
>> +	struct net_bridge_port *p;
>> +
>> +	ASSERT_RTNL();
>> +
>> +	list_for_each_entry(p, &br->port_list, list) {
>> +		if (!br_promisc_port(p))
>> +			dev_mc_del(p->dev, addr);
>> +	}
>> +}
>> +
>>  static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>>  		       bool swdev_notify)
>>  {
>>  	trace_fdb_delete(br, f);
>>  
>> -	if (f->is_static)
>> +	if (f->is_static) {
>>  		fdb_del_hw_addr(br, f->key.addr.addr);
>> +		fdb_del_hw_maddr(br, f->key.addr.addr);
> 
> Walking over all ports again for each static delete is a no-go.
> 
>> +	}
>>  
>>  	hlist_del_init_rcu(&f->fdb_node);
>>  	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
>> @@ -843,13 +880,19 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>>  			fdb->is_local = 1;
>>  			if (!fdb->is_static) {
>>  				fdb->is_static = 1;
>> -				fdb_add_hw_addr(br, addr);
>> +				if (flags & NLM_F_APPEND && !source)
>> +					fdb_add_hw_maddr(br, addr);
>> +				else
>> +					fdb_add_hw_addr(br, addr);
>>  			}
>>  		} else if (state & NUD_NOARP) {
>>  			fdb->is_local = 0;
>>  			if (!fdb->is_static) {
>>  				fdb->is_static = 1;
>> -				fdb_add_hw_addr(br, addr);
>> +				if (flags & NLM_F_APPEND && !source)
>> +					fdb_add_hw_maddr(br, addr);
>> +				else
>> +					fdb_add_hw_addr(br, addr);
>>  			}
>>  		} else {
>>  			fdb->is_local = 0;
>>
> 

