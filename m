Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAD921F638
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 17:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0120026AD9;
	Tue, 14 Jul 2020 15:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOEWDtnYpZ3n; Tue, 14 Jul 2020 15:33:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 62FAA26387;
	Tue, 14 Jul 2020 15:33:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 36758C0733;
	Tue, 14 Jul 2020 15:33:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B5B8C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3770D89A85
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7plWKgZxQHz for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 15:33:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 32B9489A61
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 15:33:29 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k6so22507230wrn.3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 08:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZV/5MnfWGeiQqfjaCqjhBosmdIaJp+dftZ+PZRkEpS8=;
 b=dUQ7MtvKSup1M8kQBPW+VW+lvzt1lO7sZHZm9EF/2jZHHtXM2s0S6Oz2Q8owzi0TM7
 dsSlH9pweGgn7xh1ukkA2C1VN3Mx03bsgftFuETOH1x9fKpaAfgrmG7SN1sl1Q0XZvH7
 wA5+wE332V0zEcqxTumt6y2Q1r/2OZ4OmsBXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZV/5MnfWGeiQqfjaCqjhBosmdIaJp+dftZ+PZRkEpS8=;
 b=VMoVNdKdc8JKI6m3MFDEmvsBw0XkyGCoeukWEBciNlXgyVZWbJZHsXVFVXjiKxh/lA
 oWs990ZA2BCRAfAJsuGKFPFEGEeIdCzVTPihZUHS03yogP7KKY8mywVXua17Cu7bDrRE
 LXOfGDPWAgl9gC1phyNt5yQZascNcS8JGN4vOuuVUzGTicsScGCBDNFgKF8D69KhDBni
 xJ4qUtfV8Kg4CtfMSJOgiM+TOGSI6oCQpb4993zI+OLv3gOvRoWLnLmeePK8ka6Y1kSW
 BPaUHQfQxWEYPFDpvEdemtKtXCwA1ULfMvsJbjwDMETDc28mQLeejCSBe8ToDisgpnge
 EXqQ==
X-Gm-Message-State: AOAM532gygBI5RJH2Bze48yqwGfG3n5IDt9QNZedHa2zKNVlfdg2rDQ7
 CN3sf795esCZy41lqJTNzxQQ7wXA8YZ3Qg==
X-Google-Smtp-Source: ABdhPJw7QIq7PKKMCpfby1y5PCR1m53BEi9g8JiyU2dyynkHCDmKyKsirnqTtXj1MUOKCU8yf4oG6w==
X-Received: by 2002:a5d:4e48:: with SMTP id r8mr6301220wrt.309.1594740807167; 
 Tue, 14 Jul 2020 08:33:27 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f12sm29802475wrj.48.2020.07.14.08.33.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 08:33:26 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-13-horatiu.vultur@microchip.com>
 <9eeb89c5-865f-2b21-c7c6-7f4479bf4175@cumulusnetworks.com>
 <20200714150740.3ji3qhtvikhrizfn@soft-dev3.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a22642aa-63a2-e492-5f64-b344c62d0142@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 18:33:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714150740.3ji3qhtvikhrizfn@soft-dev3.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 12/12] net: bridge: Add port
 attribute IFLA_BRPORT_MRP_IN_OPEN
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

On 14/07/2020 18:07, Horatiu Vultur wrote:
> The 07/14/2020 16:29, Nikolay Aleksandrov wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 14/07/2020 10:34, Horatiu Vultur wrote:
>>> This patch adds a new port attribute, IFLA_BRPORT_MRP_IN_OPEN, which
>>> allows to notify the userspace when the node lost the contiuity of
>>> MRP_InTest frames.
>>>
>>> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
>>> ---
>>>  include/uapi/linux/if_link.h       | 1 +
>>>  net/bridge/br_netlink.c            | 3 +++
>>>  tools/include/uapi/linux/if_link.h | 1 +
>>>  3 files changed, 5 insertions(+)
>>>
> 
> Hi Nik,
> 
>>
>> It's kind of late by now, but I'd wish these were contained in a nested MRP attribute. :)
>> Horatiu, do you expect to have many more MRP attributes outside of MRP netlink code?
> 
> I don't expect to add any other MRP attributes outside of MRP netlink
> code.
> 
>>
>> Perhaps we should at least dump them only for MRP-aware ports, that should be easy.
>> They make no sense outside of MRP anyway, but increase the size of the dump for all
>> right now.
> 
> You are right. Then should I first send a fix on the net for this and
> after that I will fix these patches or just fix this in the next patch
> series?
> 

IMO it's more of an improvement rather than a bug, but since you don't expect to have more
attributes outside of MRP's netlink I guess we can drop it for now. Up to you.

It definitely shouldn't block this patch-set.

>>
>> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>>
>>> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
>>> index cc185a007ade8..26842ffd0501d 100644
>>> --- a/include/uapi/linux/if_link.h
>>> +++ b/include/uapi/linux/if_link.h
>>> @@ -344,6 +344,7 @@ enum {
>>>       IFLA_BRPORT_ISOLATED,
>>>       IFLA_BRPORT_BACKUP_PORT,
>>>       IFLA_BRPORT_MRP_RING_OPEN,
>>> +     IFLA_BRPORT_MRP_IN_OPEN,
>>>       __IFLA_BRPORT_MAX
>>>  };
>>>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
>>> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
>>> index c532fa65c9834..147d52596e174 100644
>>> --- a/net/bridge/br_netlink.c
>>> +++ b/net/bridge/br_netlink.c
>>> @@ -152,6 +152,7 @@ static inline size_t br_port_info_size(void)
>>>  #endif
>>>               + nla_total_size(sizeof(u16))   /* IFLA_BRPORT_GROUP_FWD_MASK */
>>>               + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_RING_OPEN */
>>> +             + nla_total_size(sizeof(u8))    /* IFLA_BRPORT_MRP_IN_OPEN */
>>>               + 0;
>>>  }
>>>
>>> @@ -216,6 +217,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>>>                      !!(p->flags & BR_NEIGH_SUPPRESS)) ||
>>>           nla_put_u8(skb, IFLA_BRPORT_MRP_RING_OPEN, !!(p->flags &
>>>                                                         BR_MRP_LOST_CONT)) ||
>>> +         nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>>> +                    !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
>>>           nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
>>>               return -EMSGSIZE;
>>>
>>> diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
>>> index cafedbbfefbe9..781e482dc499f 100644
>>> --- a/tools/include/uapi/linux/if_link.h
>>> +++ b/tools/include/uapi/linux/if_link.h
>>> @@ -344,6 +344,7 @@ enum {
>>>       IFLA_BRPORT_ISOLATED,
>>>       IFLA_BRPORT_BACKUP_PORT,
>>>       IFLA_BRPORT_MRP_RING_OPEN,
>>> +     IFLA_BRPORT_MRP_IN_OPEN,
>>>       __IFLA_BRPORT_MAX
>>>  };
>>>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
>>>
>>
> 

