Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC777CC3A9
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 14:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FE5980C13;
	Tue, 17 Oct 2023 12:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FE5980C13
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=RJe7rDlB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJ_VeadoE4GU; Tue, 17 Oct 2023 12:53:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id ACE728207D;
	Tue, 17 Oct 2023 12:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACE728207D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 485E1C0DD3;
	Tue, 17 Oct 2023 12:53:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6DBEC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 12:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 906AE40A58
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 12:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 906AE40A58
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=RJe7rDlB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4Q-SbV9beHh for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 12:53:10 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B2FE416E6
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 12:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B2FE416E6
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-40806e40fccso3871095e9.2
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 05:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697547188; x=1698151988;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XLx6w5DXGZb9mtKdzl0gzgCnw3UsE+8g0Kr5B/l31qs=;
 b=RJe7rDlBpIsF0MboZ+fCgaX5DGaZER4DEW49zWkwrFHMF8XQK9I6UOcqn7Kx8ohCAH
 yq+FTcxTuQbVsJ0UZx/BuY743xwVggVAuwyDxoGFUER9tmro3rtlEZfVIkgTRx01LRs5
 d6vKu2Tajsn4Zkho4FtigOkJQI4apGS2QD/APIV5+s4yTn7qfXP57h/jsXW0kLIZxhkd
 FeMFE2PyIIbS8cJ7fllmJieqsvyx8Oe/IBya3PowZJmfyPH2VNrXiixBbSr1xBqIeG7d
 zzseeNKVhhuaNWpbdbhO49zqfgv1GVwMpyxsk8OCCsELJC9k5NaEue8GGzXL6M4+N6lA
 /m7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697547188; x=1698151988;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XLx6w5DXGZb9mtKdzl0gzgCnw3UsE+8g0Kr5B/l31qs=;
 b=eMnUNbef0YWDN/4CJtDaqliJi6AiyQP8Ox4Bm+ADCay3Ks040zAfhY+5flS+Jfo0Rn
 V392iO0ejXuwwQr1aoAybOZHob64HGknlUNfNyV1vlvyKmYnnzFAvZBjY5UlA9CplZg2
 3vOqeCKdPj4lyK2dr4pKCcbKxhSNzDh8DPG25UmR5wDK5cJITk/zJm2FZSmP6BYjJT7T
 8Oook1d91udZBuWiaIzx65j5DvDCbn6hLxkH9W126kfj6s97/wEbEqiPZnznwOQe286z
 AepuREg3qcVyySAebZG84moRGe0ETOMLIOhADKsqc/2VgI9N27qBg1M19HwUuZXXb1HI
 cdfg==
X-Gm-Message-State: AOJu0YyBHm2xG1yMRCAfq6bj8ZcS7dkvTVAePmCEGpAk85tnLS5JXSLj
 1geG/CyzC/YLD5N0XBh2q2lZWQ==
X-Google-Smtp-Source: AGHT+IH0iL2J+xKXPRvnk3+qd/oP9a6lxrmAFhMp4lRBX3pvKnaACGLwdcOpqokMhS0Z/UFzNKm33w==
X-Received: by 2002:a5d:66d0:0:b0:32d:be3e:db6f with SMTP id
 k16-20020a5d66d0000000b0032dbe3edb6fmr1891390wrw.24.1697547187872; 
 Tue, 17 Oct 2023 05:53:07 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 o14-20020a5d62ce000000b0031779a6b451sm1618216wrv.83.2023.10.17.05.53.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 05:53:07 -0700 (PDT)
Message-ID: <bb71b086-b60e-c130-8484-5a71d0a07f19@blackwall.org>
Date: Tue, 17 Oct 2023 15:53:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-10-idosch@nvidia.com>
 <141f0fc1-f024-d437-dae2-e074523c9bf8@blackwall.org>
 <ZS5qE3ou0iceLsp2@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZS5qE3ou0iceLsp2@shredder>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 edumazet@google.com, mlxsw@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 09/13] bridge: mcast: Add MDB get
	support
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

On 10/17/23 14:03, Ido Schimmel wrote:
> On Tue, Oct 17, 2023 at 12:24:44PM +0300, Nikolay Aleksandrov wrote:
>> On 10/16/23 16:12, Ido Schimmel wrote:
>>> Implement support for MDB get operation by looking up a matching MDB
>>> entry, allocating the skb according to the entry's size and then filling
>>> in the response. The operation is performed under the bridge multicast
>>> lock to ensure that the entry does not change between the time the reply
>>> size is determined and when the reply is filled in.
>>>
>>> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
>>> ---
>>>    net/bridge/br_device.c  |   1 +
>>>    net/bridge/br_mdb.c     | 154 ++++++++++++++++++++++++++++++++++++++++
>>>    net/bridge/br_private.h |   9 +++
>>>    3 files changed, 164 insertions(+)
>>>
>> [snip]
>>> +int br_mdb_get(struct net_device *dev, struct nlattr *tb[], u32 portid, u32 seq,
>>> +	       struct netlink_ext_ack *extack)
>>> +{
>>> +	struct net_bridge *br = netdev_priv(dev);
>>> +	struct net_bridge_mdb_entry *mp;
>>> +	struct sk_buff *skb;
>>> +	struct br_ip group;
>>> +	int err;
>>> +
>>> +	err = br_mdb_get_parse(dev, tb, &group, extack);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	spin_lock_bh(&br->multicast_lock);
>>
>> Since this is only reading, could we use rcu to avoid blocking mcast
>> processing?
> 
> I tried to explain this choice in the commit message. Do you think it's
> a non-issue?
> 

Unless you really need a stable snapshot, I think it's worth
not blocking igmp processing for a read. It's not critical,
if you do need a stable snapshot then it's ok.

>>
>>> +
>>> +	mp = br_mdb_ip_get(br, &group);
>>> +	if (!mp) {
>>> +		NL_SET_ERR_MSG_MOD(extack, "MDB entry not found");
>>> +		err = -ENOENT;
>>> +		goto unlock;
>>> +	}
>>> +
>>> +	skb = br_mdb_get_reply_alloc(mp);
>>> +	if (!skb) {
>>> +		err = -ENOMEM;
>>> +		goto unlock;
>>> +	}
>>> +
>>> +	err = br_mdb_get_reply_fill(skb, mp, portid, seq);
>>> +	if (err) {
>>> +		NL_SET_ERR_MSG_MOD(extack, "Failed to fill MDB get reply");
>>> +		goto free;
>>> +	}
>>> +
>>> +	spin_unlock_bh(&br->multicast_lock);
>>> +
>>> +	return rtnl_unicast(skb, dev_net(dev), portid);
>>> +
>>> +free:
>>> +	kfree_skb(skb);
>>> +unlock:
>>> +	spin_unlock_bh(&br->multicast_lock);
>>> +	return err;
>>> +}
>>

