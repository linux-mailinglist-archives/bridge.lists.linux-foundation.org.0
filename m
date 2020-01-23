Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6545B1472FB
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 22:10:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67E7A881A8;
	Thu, 23 Jan 2020 21:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hf5KR3lhOqpp; Thu, 23 Jan 2020 21:10:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D87708837C;
	Thu, 23 Jan 2020 21:10:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B0DE4C0174;
	Thu, 23 Jan 2020 21:10:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD615C0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 21:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D2FE83339
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 21:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuWB2MX3L78Q for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 21:10:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7BCA08655C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 21:10:16 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id m13so295731edb.6
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/tAMaiitw1PyxFIS0OriuIYG+lTM5de1QiU8nvpGZ4U=;
 b=S9nQS5M8GRxqDnKBmZCpo/gItUgfZy/2LR/PUWL3LW9ZHOl1HDQm9yQNydKZsdTly4
 H+O6N6OoL0hGioUxzz76ffE6NdEh+tpUSXyHYFYrOVRBTkC22Ump2rR2NUFp2LVsWmvs
 qtPaUH9edp7gfYpGKBmQwWcwSoBph6tZ9c3/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/tAMaiitw1PyxFIS0OriuIYG+lTM5de1QiU8nvpGZ4U=;
 b=q1m39CmKzHYwyfItL+KSyGyodOf+Q2+cAUTeCjYV9KsiCF48wwM9qX3JxAReJ6E6cp
 aqtmiW6f6xinfE5szwVQfDN/ZgkY1mAYkxInywEk0toM9jDiulSrhAYVMUKWRxB3Ni54
 eMSfa7cgfao2KpGfAg5nSdmM5iE5w79T5E4bC0jv4TNKGmTYaUHGFAuyueji8BgPNrHB
 /+lXxJKb5DRVSCkUdIsLbYphCSd1pBq5lnf54m2aw4XpqG7c63tj7RSJyi/rsdEkYQa8
 W7P0Tln4n75f+WtZgzH+M9Uykl3FeSr27wLZqIfQ3m8n+hJetvOr3Ez6FQR55FmZaKbN
 X2lw==
X-Gm-Message-State: APjAAAXJRujr4J0mGtwn8uWapCY2ZZ7h6AH1eDkIOS25jSjjEI8rXTDz
 KKnLjOPzjsrVeAl96uZ9pdUg5jYWHbc=
X-Google-Smtp-Source: APXvYqyRn+MqAW0Zit1T7cZUHvA6hnhflt11PNiiZTzXjiH6/IAJoUEvHTLi4VuR/7E4pBsKFaM9DQ==
X-Received: by 2002:a05:6402:b71:: with SMTP id
 cb17mr8893554edb.125.1579813814598; 
 Thu, 23 Jan 2020 13:10:14 -0800 (PST)
Received: from [192.168.0.110] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id ay24sm47153edb.29.2020.01.23.13.10.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 13:10:14 -0800 (PST)
To: netdev@vger.kernel.org
References: <20200123132807.613-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <f67c2960-89ff-a6e6-14eb-27f6e4996a4a@cumulusnetworks.com>
Date: Thu, 23 Jan 2020 23:10:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200123132807.613-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/4] net: bridge: add per-vlan state
	option
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

On 1/23/20 3:28 PM, Nikolay Aleksandrov wrote:
> Hi,
> This set adds the first per-vlan option - state, which uses the new vlan
> infrastructure that was recently added. It gives us forwarding control on
> per-vlan basis. The first 3 patches prepare the vlan code to support option
> dumping and modification. We still compress vlan ranges which have equal
> options, each new option will have to add its own equality check to
> br_vlan_opts_eq(). The vlans are created in forwarding state by default to
> be backwards compatible and vlan state is considered only when the port
> state is forwarding (more info in patch 4).
> I'll send the selftest for the vlan state with the iproute2 patch-set.
> 
> Thanks,
>   Nik
> 
> Nikolay Aleksandrov (4):
>    net: bridge: check port state before br_allowed_egress
>    net: bridge: vlan: add basic option dumping support
>    net: bridge: vlan: add basic option setting support
>    net: bridge: vlan: add per-vlan state
> 
>   include/uapi/linux/if_bridge.h |   2 +
>   net/bridge/Makefile            |   2 +-
>   net/bridge/br_device.c         |   3 +-
>   net/bridge/br_forward.c        |   2 +-
>   net/bridge/br_input.c          |   7 +-
>   net/bridge/br_private.h        |  58 +++++++++++++-
>   net/bridge/br_vlan.c           |  99 ++++++++++++++++++-----
>   net/bridge/br_vlan_options.c   | 142 +++++++++++++++++++++++++++++++++
>   8 files changed, 287 insertions(+), 28 deletions(-)
>   create mode 100644 net/bridge/br_vlan_options.c
> 

Hm, actually I just noticed that we send port notifications even if only changing options
which should be avoided since now we have per-vlan notifications. We should be sending
only those when changing options without create/delete.
I'll make that change and send v2 after some tests tomorrow.

Cheers,
  Nik
