Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEDC1E0BC7
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 12:26:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78612861F4;
	Mon, 25 May 2020 10:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksIl2b_od5FF; Mon, 25 May 2020 10:26:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E682886113;
	Mon, 25 May 2020 10:26:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C22F7C016F;
	Mon, 25 May 2020 10:26:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D266C016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 10:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 479F386102
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 10:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qjQrPs8rQ_7W for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 10:26:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 03EC2860FF
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 10:26:49 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id u13so6102297wml.1
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 03:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nMuvRSUb4ALiiBXH2s5u47j7uY/+82nlefji0PdsqHk=;
 b=TdT/jOYp5cN158dXnRfMmu0WeMjAVZzB0VoCOeLtiiOKgMwNFvOyrj3bPucpXG9i98
 DcQSmeXYpvdIUQ76QpOXEwjDIwVeBS2G5+anjM5hPsmCuDZia2pPpFQGsSLLTL/YzInG
 Umt6R9YimmRT5xGGQR6fRUGYY91nr/bSkGomQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nMuvRSUb4ALiiBXH2s5u47j7uY/+82nlefji0PdsqHk=;
 b=aveTGiUqE0eh3r5wODebCezTe0xeUCS3HofdUbmyQchtCA47b6KG7x8eLvPRi7wAlA
 YsRaYrfMGXOsm26LYdFk077W3C3jpzBzeb+Pkl4SgCugpELmHdRdpNsuLZgQi7c9FzmP
 vMEjwUpHiLMaEaMPaRfNkTPtelb1h2JQxQ3az4Fc2CDrTmNccg8CvQxQJkIPXuOcROgQ
 5gi7wUFYJBMsQk1Kt7iYt+ddZlo0qSoou1TOjOwLSn5HgGih8Q/jKwxnC2vCEx/gBtZC
 Q9N/y1bB2Fz+mt1FF9DrgvY624ZXzcMY1SwARYVxJcO75sdctmeMp4HOqQPMHq4Bjaa3
 97UA==
X-Gm-Message-State: AOAM530J0vMFHEBKdVvEgGVeUzwUSkZuI9rO0GI67EURPZoLKbvE37kp
 cavUW3HE4xi7Os6mpsu4m208eg==
X-Google-Smtp-Source: ABdhPJxXgGSlKW88yPOhBKqcx/KenoNx/MiflMYVJdNcY2yiQq7fFumKEeTy32ISIjvc3rahbZnVuw==
X-Received: by 2002:a7b:c253:: with SMTP id b19mr25701091wmj.110.1590402407376; 
 Mon, 25 May 2020 03:26:47 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 40sm17155504wrc.15.2020.05.25.03.26.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 03:26:46 -0700 (PDT)
To: Michal Kubecek <mkubecek@suse.cz>, netdev@vger.kernel.org
References: <20200525112827.t4nf4lamz6g4g2c5@soft-dev3.localdomain>
 <20200525100322.sjlfxhz2ztrfjia7@lion.mk-sys.cz>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <88bc4a98-c0c8-32df-142e-d4738fe0065a@cumulusnetworks.com>
Date: Mon, 25 May 2020 13:26:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200525100322.sjlfxhz2ztrfjia7@lion.mk-sys.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, davem@davemloft.net, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] MRP netlink interface
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

On 25/05/2020 13:03, Michal Kubecek wrote:
> On Mon, May 25, 2020 at 11:28:27AM +0000, Horatiu Vultur wrote:
> [...]
>> My first approach was to extend the 'struct br_mrp_instance' with a field that
>> contains the priority of the node. But this breaks the backwards compatibility,
>> and then every time when I need to change something, I will break the backwards
>> compatibility. Is this a way to go forward?
> 
> No, I would rather say it's an example showing why passing data
> structures as binary data via netlink is a bad idea. I definitely
> wouldn't advice this approach for any new interface. One of the
> strengths of netlink is the ability to use structured and extensible
> messages.
> 
>> Another approach is to restructure MRP netlink interface. What I was thinking to
>> keep the current attributes (IFLA_BRIDGE_MRP_INSTANCE,
>> IFLA_BRIDGE_MRP_PORT_STATE,...) but they will be nested attributes and each of
>> this attribute to contain the fields of the structures they represents.
>> For example:
>> [IFLA_AF_SPEC] = {
>>     [IFLA_BRIDGE_FLAGS]
>>     [IFLA_BRIDGE_MRP]
>>         [IFLA_BRIDGE_MRP_INSTANCE]
>>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
>>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
>>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
>>         [IFLA_BRIDGE_MRP_RING_ROLE]
>>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
>>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
>>         ...
>> }
>> And then I can parse each field separately and then fill up the structure
>> (br_mrp_instance, br_mrp_port_role, ...) which will be used forward.
>> Then when this needs to be extended with the priority it would have the
>> following format:
>> [IFLA_AF_SPEC] = {
>>     [IFLA_BRIDGE_FLAGS]
>>     [IFLA_BRIDGE_MRP]
>>         [IFLA_BRIDGE_MRP_INSTANCE]
>>             [IFLA_BRIDGE_MRP_INSTANCE_RING_ID]
>>             [IFLA_BRIDGE_MRP_INSTANCE_P_IFINDEX]
>>             [IFLA_BRIDGE_MRP_INSTANCE_S_IFINDEX]
>>             [IFLA_BRIDGE_MRP_INSTANCE_PRIO]
>>         [IFLA_BRIDGE_MRP_RING_ROLE]
>>             [IFLA_BRIDGE_MRP_RING_ROLE_RING_ID]
>>             [IFLA_BRIDGE_MRP_RING_ROLE_ROLE]
>>         ...
>> }
>> And also the br_mrp_instance will have a field called prio.
>> So now, if the userspace is not updated to have support for setting the prio
>> then the kernel will use a default value. Then if the userspace contains a field
>> that the kernel doesn't know about, then it would just ignore it.
>> So in this way every time when the netlink interface will be extended it would
>> be backwards compatible.
> 
> Silently ignoring unrecognized attributes in userspace requests is what
> most kernel netlink based interfaces have been doing traditionally but
> it's not really a good idea. Essentially it ties your hands so that you
> can only add new attributes which can be silently ignored without doing
> any harm, otherwise you risk that kernel will do something different
> than userspace asked and userspace does not even have a way to find out
> if the feature is supported or not. (IIRC there are even some places
> where ignoring an attribute changes the nature of the request but it is
> still ignored by older kernels.)
> 
> That's why there have been an effort, mostly by Johannes Berg, to
> introduce and promote strict checking for new netlink interfaces and new
> attributes in existing netlink attributes. If you don't have strict
> checking for unknown attributes enabled yet, there isn't much that can
> be done for already released kernels but I would suggest to enable it as
> soon as possible.
> 
> Michal
> 

+1, we don't have strict checking for the bridge main af spec attributes, but
you could add that for new nested interfaces that need to be parsed like the
above







