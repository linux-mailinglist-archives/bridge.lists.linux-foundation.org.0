Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CC211A797
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 10:40:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B8325226D7;
	Wed, 11 Dec 2019 09:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4o4BuWEbGms; Wed, 11 Dec 2019 09:40:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3AD8F228A4;
	Wed, 11 Dec 2019 09:40:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D42B2C0881;
	Wed, 11 Dec 2019 09:40:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E475C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 09:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 44D948853B
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 09:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxAVU8T9Pa-B for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 09:40:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E08A88538
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 09:40:35 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 203so16093738lfa.12
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 01:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VEiTqs3AdcOOADsYpDlYWqADQJ1OE+9BmLTpHWgdwWA=;
 b=GhxoZKc5XN75PQaqV66FqdkPlEFs9NHr8vay7vPpK0Gv0Z4gZO1JVarSAkNVUdqq1y
 QEWyzyKj+hk2Qp2pcqlZrcZyOuFMz/eXRj3m7X+mIpseNgHSFSy/0EBoPEH/xqswnpmR
 2iAtAb1XVFSqUfQqJzTM9ogWBjvBWefgWMkeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VEiTqs3AdcOOADsYpDlYWqADQJ1OE+9BmLTpHWgdwWA=;
 b=qFCvSg79sILr/jmds02jSxOAXgvrP+eqqz3tOw4lJemhOmTyIlHPRzehi6ZD6cDt/B
 1X0eijPmcq563tT7vRzEtbpBq9IuKSjsv7DcmIa/qApI9lA1zA3iL1JBw2zB9UFjp/Yb
 +VZ1BgnRGoVeAzVW67dINJaN+8o/w5CGgioWojiIkFQ0qDR7kJsAyCDyjtnsgW3N/50W
 EFs7KRDnA9rih0WHSG/vXny+3DktQ3p7KWGgo+Flkq+w3pOPFMweQ/QZEy7eX0ofqJBp
 K0BhT7XRSjq8CrJVidHaSL1vMf6q1UrwijQxHaicgFCl/WLgc89so25fl0lfZ1q+tQPt
 Xoeg==
X-Gm-Message-State: APjAAAVnhMvc0C9L7wjkawFk10q4d0XdspTOpjqba2FM8OS63927rAiT
 7Vr4TxDwj7gUFYYAHiDcRmSZXw==
X-Google-Smtp-Source: APXvYqyEVpct9K2sXUM2MbItPcfiRlNPGv5wGFyBRzyiYOJTrwmV0Fui86l9vGvO/+SvYo9HZ0OzvA==
X-Received: by 2002:ac2:424d:: with SMTP id m13mr1526102lfl.13.1576057233234; 
 Wed, 11 Dec 2019 01:40:33 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t14sm771137ljh.52.2019.12.11.01.40.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 01:40:32 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
 <30e93cfb-cc2c-c484-a743-479cce19d8a9@cumulusnetworks.com>
 <20191210210203.GB1480973@t480s.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <498b31ea-bafc-1f44-d4bd-354f30a71972@cumulusnetworks.com>
Date: Wed, 11 Dec 2019 11:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191210210203.GB1480973@t480s.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

On 11/12/2019 04:02, Vivien Didelot wrote:
> Hi Nikolay,
> 
> On Tue, 10 Dec 2019 23:45:13 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
>>> +	if (p) {
>>> +		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
>>> +					sizeof(p->stp_xstats),
>>> +					BRIDGE_XSTATS_PAD);
>>> +		if (!nla)
>>> +			goto nla_put_failure;
>>> +
>>> +		memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
>>
>> You need to take the STP lock here to get a proper snapshot of the values.
> 
> Good catch! I see a br->multicast_lock but no br->stp_lock. Is this what
> you expect?
> 
>     spin_lock_bh(&br->lock);
>     memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
>     spin_unlock_bh(&br->lock);
> 

Yeah, this is a very old lock (pre-git) which needs some attention. :)
That is the lock and the above looks good to me.

> 
> Thanks,
> 
> 	Vivien
> 

Cheers,
 Nik
