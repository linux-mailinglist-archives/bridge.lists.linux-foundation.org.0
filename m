Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1847DCAC
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:41:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 59A30138D;
	Thu,  1 Aug 2019 13:39:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59EC43EA5
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 23:32:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A61F06CE
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 23:32:56 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id h10so67412188ljg.0
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 16:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=CX+W2vODD3zGUj/joWK7YfYg9vtMH4AGLIbP0a3owOM=;
	b=NmKGubUQ61jLeyg5LFUsUxAHzdospAsPZVPSOgfWpOB6Lh8DQv0SyO+dAa4fBn1cxe
	WC97uvjLQUT3tX2qHRzDbAJBnhjdaodWudOAQwGgy29wXvsqmE76NpYns42K4EXnvDvk
	E28nfl6itmpuKBWeM9hKMakSqkjmbHAwaiTKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=CX+W2vODD3zGUj/joWK7YfYg9vtMH4AGLIbP0a3owOM=;
	b=SVKhpKF9mBPfPD5HuGF2yqaXQabbqS/Elt1luNGuqHpynSv995LMzoBXHqP/JNNQQ3
	MUxsmtDdTNOuWCNgQtD4HeY0oWUDq26YXWdVP94oErYjcD5025cZIBZuMBULLQm4oHKT
	UrZ8PHFTwBziyX1UztQdVwZhTMsJMi8vYidDiwOUUWyVmJggsJgsMLBZBJ2VtuVWRdBy
	gaCXqUyz/kKLjS8b7jMvm7/P2avPsD6Q23Wwy1SdQ/nkeyRdye3eRgtt9FJ4NrOxkgGE
	RcPFiU9VnzAro4hsRk0c8+xoRN6PQwH5qXZB+3zrfCXR6cbzmQciLQ3geFZQ7iMLBDS7
	o2RQ==
X-Gm-Message-State: APjAAAX6a87uo6gwYSAhxT1fUwzHLl0wv4QAVz+2fUTDfVS883D60SBC
	XWHs+zZg1/PxfAO9pxdnZb6OUA==
X-Google-Smtp-Source: APXvYqyKZvZlTIuro1i68XRxTVikQLptULFWQ0xk+x2CLH6K/OpdUcY5d1jPiQvlVq9WF9o4oXouew==
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr25556932ljj.185.1564615975037; 
	Wed, 31 Jul 2019 16:32:55 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.googlemail.com with ESMTPSA id
	e62sm14273888ljf.82.2019.07.31.16.32.52
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Jul 2019 16:32:53 -0700 (PDT)
To: Stephen Hemminger <stephen@networkplumber.org>
References: <319fda43-195d-2b92-7f62-7e273c084a29@cumulusnetworks.com>
	<20190731224955.10908-1-nikolay@cumulusnetworks.com>
	<20190731155338.15ff34cb@hermes.lan>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <c9a68f85-49f6-6d02-e130-a03d540aa0a7@cumulusnetworks.com>
Date: Thu, 1 Aug 2019 02:32:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190731155338.15ff34cb@hermes.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, davem@davemloft.net,
	michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v3] net: bridge: move vlan init/deinit to
 NETDEV_REGISTER/UNREGISTER
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

On 8/1/19 1:53 AM, Stephen Hemminger wrote:
>   
>> -int br_vlan_init(struct net_bridge *br)
>> +static int br_vlan_init(struct net_bridge *br)
>>  {
>>  	struct net_bridge_vlan_group *vg;
>>  	int ret = -ENOMEM;
>> @@ -1083,6 +1085,8 @@ int br_vlan_init(struct net_bridge *br)
>>  	return ret;
>>  
>>  err_vlan_add:
>> +	RCU_INIT_POINTER(br->vlgrp, NULL);
>> +	synchronize_rcu();
> 
> Calling sychronize_rcu is expensive. And the callback for
> notifier is always called with rtnl_head. 
> 
> Why not just keep the pointer initialization back in the
> code where bridge is created, it was safe there.
> 

Because now the device registered and we've published the group, right now
it is not an issue but if we expose an rcu helper we'll have to fix this
because it'd become a bug.
I'd prefer to have the error path correct and future-proof it, since it's
an error path we're not concerned with speed, but rather correctness. Also
these are rarely exercised so the bug might remain for a very long time.


